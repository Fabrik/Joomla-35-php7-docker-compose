/*
Navicat MySQL Data Transfer

Source Server         : localhost fabrik php7
Source Server Version : 50628
Source Host           : 127.0.0.1:3306
Source Database       : fabrik

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2016-02-15 16:09:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `access` int(3) DEFAULT NULL,
  `attending` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `calc` text,
  `captcha` varchar(255) DEFAULT NULL,
  `checkbox` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '2015-11-09 08:55:58', null, null, null, null, null, null, null);
INSERT INTO `test` VALUES ('2', '2016-02-15 14:54:05', '0', '0', '0000-00-00', '', '18', null, '[\"\"]');

-- ----------------------------
-- Table structure for zwkgr_assets
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_assets`;
CREATE TABLE `zwkgr_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_assets
-- ----------------------------
INSERT INTO `zwkgr_assets` VALUES ('1', '0', '0', '103', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `zwkgr_assets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `zwkgr_assets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('8', '1', '17', '20', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('9', '1', '21', '22', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `zwkgr_assets` VALUES ('10', '1', '23', '24', '1', 'com_installer', 'com_installer', '{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `zwkgr_assets` VALUES ('11', '1', '25', '26', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('12', '1', '27', '28', '1', 'com_login', 'com_login', '{}');
INSERT INTO `zwkgr_assets` VALUES ('13', '1', '29', '30', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `zwkgr_assets` VALUES ('14', '1', '31', '32', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `zwkgr_assets` VALUES ('15', '1', '33', '34', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('16', '1', '35', '36', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('17', '1', '37', '38', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('18', '1', '39', '70', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('19', '1', '71', '74', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('20', '1', '75', '76', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('21', '1', '77', '78', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('22', '1', '79', '80', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('23', '1', '81', '82', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('24', '1', '83', '86', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('26', '1', '87', '88', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `zwkgr_assets` VALUES ('27', '8', '18', '19', '2', 'com_content.category.2', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('30', '19', '72', '73', '2', 'com_newsfeeds.category.5', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('32', '24', '84', '85', '1', 'com_users.category.7', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('33', '1', '89', '90', '1', 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `zwkgr_assets` VALUES ('34', '1', '91', '92', '1', 'com_joomlaupdate', 'com_joomlaupdate', '{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('35', '1', '93', '94', '1', 'com_tags', 'com_tags', '{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('36', '1', '95', '96', '1', 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `zwkgr_assets` VALUES ('37', '1', '97', '98', '1', 'com_ajax', 'com_ajax', '{}');
INSERT INTO `zwkgr_assets` VALUES ('38', '1', '99', '100', '1', 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `zwkgr_assets` VALUES ('39', '18', '40', '41', '2', 'com_modules.module.1', 'Main Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('40', '18', '42', '43', '2', 'com_modules.module.2', 'Login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('41', '18', '44', '45', '2', 'com_modules.module.3', 'Popular Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('42', '18', '46', '47', '2', 'com_modules.module.4', 'Recently Added Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('43', '18', '48', '49', '2', 'com_modules.module.8', 'Toolbar', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('44', '18', '50', '51', '2', 'com_modules.module.9', 'Quick Icons', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('45', '18', '52', '53', '2', 'com_modules.module.10', 'Logged-in Users', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('46', '18', '54', '55', '2', 'com_modules.module.12', 'Admin Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('47', '18', '56', '57', '2', 'com_modules.module.13', 'Admin Submenu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('48', '18', '58', '59', '2', 'com_modules.module.14', 'User Status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('49', '18', '60', '61', '2', 'com_modules.module.15', 'Title', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('50', '18', '62', '63', '2', 'com_modules.module.16', 'Login Form', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('51', '18', '64', '65', '2', 'com_modules.module.17', 'Breadcrumbs', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('52', '18', '66', '67', '2', 'com_modules.module.79', 'Multilanguage status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('53', '18', '68', '69', '2', 'com_modules.module.86', 'Joomla Version', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `zwkgr_assets` VALUES ('54', '1', '101', '102', '1', 'com_fabrik', 'com_fabrik', '{}');

-- ----------------------------
-- Table structure for zwkgr_associations
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_associations`;
CREATE TABLE `zwkgr_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_associations
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_banner_clients
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_banner_clients`;
CREATE TABLE `zwkgr_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_banner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_banner_tracks
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_banner_tracks`;
CREATE TABLE `zwkgr_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_banner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_banners
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_banners`;
CREATE TABLE `zwkgr_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(191)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_banners
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_categories
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_categories`;
CREATE TABLE `zwkgr_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(191)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_categories
-- ----------------------------
INSERT INTO `zwkgr_categories` VALUES ('1', '0', '0', '0', '11', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '{}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `zwkgr_categories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `zwkgr_categories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `zwkgr_categories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `zwkgr_categories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `zwkgr_categories` VALUES ('7', '32', '1', '9', '10', '1', 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2011-01-01 00:00:01', '0', '0000-00-00 00:00:00', '0', '*', '1');

-- ----------------------------
-- Table structure for zwkgr_contact_details
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_contact_details`;
CREATE TABLE `zwkgr_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_contact_details
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_content
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_content`;
CREATE TABLE `zwkgr_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_content
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_content_frontpage
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_content_frontpage`;
CREATE TABLE `zwkgr_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_content_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_content_rating
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_content_rating`;
CREATE TABLE `zwkgr_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_content_types
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_content_types`;
CREATE TABLE `zwkgr_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_content_types
-- ----------------------------
INSERT INTO `zwkgr_content_types` VALUES ('1', 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `zwkgr_content_types` VALUES ('2', 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `zwkgr_content_types` VALUES ('3', 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `zwkgr_content_types` VALUES ('4', 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `zwkgr_content_types` VALUES ('5', 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('6', 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('7', 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('8', 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('9', 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `zwkgr_content_types` VALUES ('10', 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('11', 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `zwkgr_content_types` VALUES ('12', 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `zwkgr_content_types` VALUES ('13', 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- ----------------------------
-- Table structure for zwkgr_contentitem_tag_map
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_contentitem_tag_map`;
CREATE TABLE `zwkgr_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Records of zwkgr_contentitem_tag_map
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_core_log_searches
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_core_log_searches`;
CREATE TABLE `zwkgr_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_core_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_extensions
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_extensions`;
CREATE TABLE `zwkgr_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10141 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_extensions
-- ----------------------------
INSERT INTO `zwkgr_extensions` VALUES ('1', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('2', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('3', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('4', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('5', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('6', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('7', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('8', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('9', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('11', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('12', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('13', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('14', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('15', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('16', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('17', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('18', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('19', 'com_search', 'component', 'com_search', '', '1', '1', '1', '0', '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('20', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('22', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('23', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('24', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('25', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('27', 'com_finder', 'component', 'com_finder', '', '1', '1', '0', '0', '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('28', 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '1', '1', '0', '1', '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('29', 'com_tags', 'component', 'com_tags', '', '1', '1', '1', '1', '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('30', 'com_contenthistory', 'component', 'com_contenthistory', '', '1', '1', '1', '0', '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('31', 'com_ajax', 'component', 'com_ajax', '', '1', '1', '1', '0', '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('32', 'com_postinstall', 'component', 'com_postinstall', '', '1', '1', '1', '1', '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('101', 'SimplePie', 'library', 'simplepie', '', '0', '1', '1', '1', '{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('102', 'phputf8', 'library', 'phputf8', '', '0', '1', '1', '1', '{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('103', 'Joomla! Platform', 'library', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"dcb9b8653aec241cbc2fecaa287ded8c\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('104', 'IDNA Convert', 'library', 'idna_convert', '', '0', '1', '1', '1', '{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('105', 'FOF', 'library', 'fof', '', '0', '1', '1', '1', '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('106', 'PHPass', 'library', 'phpass', '', '0', '1', '1', '1', '{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('200', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('201', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('202', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('203', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '0', '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('204', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('205', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('206', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('207', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '0', '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('208', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('209', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('210', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('211', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('212', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('213', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('214', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('215', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('216', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('218', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('219', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('220', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('221', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('222', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('223', 'mod_finder', 'module', 'mod_finder', '', '0', '1', '0', '0', '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('300', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('301', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('302', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('303', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('304', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('305', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('307', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('308', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('309', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('310', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('311', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('312', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('313', 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '1', '1', '1', '0', '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('314', 'mod_version', 'module', 'mod_version', '', '1', '1', '1', '0', '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('315', 'mod_stats_admin', 'module', 'mod_stats_admin', '', '1', '1', '1', '0', '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('316', 'mod_tags_popular', 'module', 'mod_tags_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('317', 'mod_tags_similar', 'module', 'mod_tags_similar', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('400', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('401', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('402', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `zwkgr_extensions` VALUES ('403', 'plg_content_contact', 'plugin', 'contact', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('404', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('406', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', '0', '2011-09-18 15:22:50', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('407', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `zwkgr_extensions` VALUES ('408', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `zwkgr_extensions` VALUES ('409', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `zwkgr_extensions` VALUES ('410', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.7\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('411', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `zwkgr_extensions` VALUES ('412', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '0', '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2015\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.2.6\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `zwkgr_extensions` VALUES ('413', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('414', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `zwkgr_extensions` VALUES ('415', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `zwkgr_extensions` VALUES ('416', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `zwkgr_extensions` VALUES ('417', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('418', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('419', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('420', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('422', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('423', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `zwkgr_extensions` VALUES ('424', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `zwkgr_extensions` VALUES ('425', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `zwkgr_extensions` VALUES ('426', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `zwkgr_extensions` VALUES ('427', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `zwkgr_extensions` VALUES ('428', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `zwkgr_extensions` VALUES ('429', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `zwkgr_extensions` VALUES ('430', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `zwkgr_extensions` VALUES ('431', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('432', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `zwkgr_extensions` VALUES ('433', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('434', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('435', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('436', 'plg_system_languagecode', 'plugin', 'languagecode', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', '0', '0000-00-00 00:00:00', '10', '0');
INSERT INTO `zwkgr_extensions` VALUES ('437', 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('438', 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('439', 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', '0', '0', '1', '0', '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('440', 'plg_system_highlight', 'plugin', 'highlight', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `zwkgr_extensions` VALUES ('441', 'plg_content_finder', 'plugin', 'finder', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('442', 'plg_finder_categories', 'plugin', 'categories', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `zwkgr_extensions` VALUES ('443', 'plg_finder_contacts', 'plugin', 'contacts', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `zwkgr_extensions` VALUES ('444', 'plg_finder_content', 'plugin', 'content', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `zwkgr_extensions` VALUES ('445', 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `zwkgr_extensions` VALUES ('447', 'plg_finder_tags', 'plugin', 'tags', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('448', 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('449', 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', '0', '1', '1', '0', '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('450', 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('451', 'plg_search_tags', 'plugin', 'tags', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('452', 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1455531704}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('453', 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('454', 'plg_system_stats', 'plugin', 'stats', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"lastrun\":1455547856,\"unique_id\":\"9f4603dc0f3662e49c802183eafb6d45e65d02ae\",\"mode\":1,\"interval\":12}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('503', 'beez3', 'template', 'beez3', '', '0', '1', '1', '0', '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('504', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('506', 'protostar', 'template', 'protostar', '', '0', '1', '1', '0', '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('507', 'isis', 'template', 'isis', '', '1', '1', '1', '0', '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('600', 'English (en-GB)', 'language', 'en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('601', 'English (en-GB)', 'language', 'en-GB', '', '1', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('700', 'files_joomla', 'file', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0-beta\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10000', 'com_fabrik', 'component', 'com_fabrik', '', '1', '1', '1', '0', '{\"name\":\"com_fabrik\",\"type\":\"component\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.pollen-8.co.uk\",\"version\":\"3.3.4\",\"description\":\"COM_FABRIK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fabrik\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10001', 'mod_fabrik_form', 'module', 'mod_fabrik_form', '', '0', '1', '1', '0', '{\"name\":\"mod_fabrik_form\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"MOD_FABRIK_FORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fabrik_form\"}', '{\"formid\":\"0\",\"row_id\":\"0\",\"usekey\":\"\",\"template\":\"default\",\"formmodule_useajax\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10002', 'mod_fabrik_list', 'module', 'mod_fabrik_list', '', '0', '1', '1', '0', '{\"name\":\"mod_fabrik_list\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"MOD_FABRIK_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fabrik_list\"}', '{\"useajax\":\"0\",\"ajax_links\":\"\",\"radomizerecords\":\"0\",\"limit\":\"0\",\"show_nav\":\"\",\"fabriklayout\":\"\",\"show-title\":\"\",\"show_into\":\"1\",\"show_outro\":\"1\",\"show_filters\":\"1\",\"resetfilters\":\"0\",\"clearfilters\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10003', 'MOD_TAGCLOUD', 'module', 'mod_tagcloud', '', '0', '1', '1', '0', '{\"name\":\"MOD_TAGCLOUD\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2013 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.1\",\"description\":\"MOD_TAGCLOUD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tagcloud\"}', '{\"moduleclass_sfx\":\"\",\"@spacer\":\"\",\"table\":\"\",\"column\":\"\",\"filter\":\"\",\"url\":\"\",\"css\":\"\",\"splitter\":\",\",\"alphabetically\":\"1\",\"min\":\"1\",\"max\":\"20\",\"seperator\":\" :: \"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10004', 'mod_fabrik_form', 'module', 'mod_fabrik_form', '', '1', '1', '1', '0', '{\"name\":\"mod_fabrik_form\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"MOD_FABRIK_FORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fabrik_form\"}', '{\"formid\":\"0\",\"row_id\":\"0\",\"usekey\":\"\",\"template\":\"default\",\"formmodule_useajax\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10005', 'mod_fabrik_list', 'module', 'mod_fabrik_list', '', '1', '1', '1', '0', '{\"name\":\"mod_fabrik_list\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"MOD_FABRIK_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fabrik_list\"}', '{\"useajax\":\"\",\"ajax_links\":\"\",\"radomizerecords\":\"0\",\"show-title\":\"\",\"limit\":\"0\",\"fabriklayout\":\"default\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10006', 'mod_fabrik_quickicon', 'module', 'mod_fabrik_quickicon', '', '1', '1', '1', '0', '{\"name\":\"mod_fabrik_quickicon\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Fabrik\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"MOD_FABRIK_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_fabrik_quickicon\"}', '{\"layout\":\"menu\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10007', 'Fabrik Visualization', 'module', 'mod_fabrik_visualization', '', '1', '1', '1', '0', '{\"name\":\"Fabrik Visualization\",\"type\":\"module\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"This module shows a Fabrik visualization in Joomla\'s administration pages.\",\"group\":\"\",\"filename\":\"mod_fabrik_visualization\"}', '{\"id\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10008', 'Fabrik for JomSocial', 'plugin', 'fabrik', 'community', '0', '1', '1', '0', '{\"name\":\"Fabrik for JomSocial\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"\\n\\t\\tFabrik integration for JomSocial\\n\\t\",\"group\":\"\",\"filename\":\"fabrik\"}', '{\"coreapp\":\"0\",\"cache\":\"1\",\"position\":\"content|sidebar-top|sidebar-bottom\",\"fabrik_view\":\"0\",\"fabrik_view_id\":\"\",\"fabrik_row_id\":\"\",\"fabrik_usekey\":\"\",\"fabrik_layout\":\"\",\"fabrik_element\":\"\",\"fabrik_additional\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10009', 'plg_fabrik', 'plugin', 'fabrik', 'content', '0', '1', '1', '0', '{\"name\":\"plg_fabrik\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Pollen 8 Design Ltd\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_DESCRIPTION\",\"group\":\"\",\"filename\":\"fabrik\"}', '{\"botRegex\":\"fabrik\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10010', 'plg_fabrik_cron_email', 'plugin', 'email', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_email\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_EMAIL_DESCRIPTION\",\"group\":\"\",\"filename\":\"email\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10011', 'plg_fabrik_cron_gcalsync', 'plugin', 'gcalsync', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_gcalsync\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_CRON_GCALSYNC_DESCRIPTION\",\"group\":\"\",\"filename\":\"gcalsync\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10012', 'plg_fabrik_cron_geocode', 'plugin', 'geocode', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_geocode\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_GEOCODE_DESCRIPTION\",\"group\":\"\",\"filename\":\"geocode\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10013', 'plg_fabrik_cron_gmail', 'plugin', 'gmail', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_gmail\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_GMAIL_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10014', 'plg_cron_importcsv', 'plugin', 'importcsv', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_cron_importcsv\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Mike Griggs\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"migsby@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_CRON_IMPORTCSV_DESCRIPTION\",\"group\":\"\",\"filename\":\"importcsv\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10015', 'plg_fabrik_cron_notifications', 'plugin', 'notification', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_notifications\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_NOTIFICATIONS_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10016', 'plg_fabrik_cron_php', 'plugin', 'php', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_php\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_PHP_DESCRIPTION\",\"group\":\"\",\"filename\":\"php\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10017', 'plg_fabrik_cron_rest', 'plugin', 'rest', 'fabrik_cron', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_cron_rest\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_CRON_REST_DESCRIPTION\",\"group\":\"\",\"filename\":\"rest\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10018', 'plg_fabrik_element_access', 'plugin', 'access', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_access\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_ACCESS_DESCRIPTION\",\"group\":\"\",\"filename\":\"access\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10019', 'plg_fabrik_element_attending', 'plugin', 'attending', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_attending\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_ATTENDING_DESCRIPTION\",\"group\":\"\",\"filename\":\"attending\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10020', 'plg_fabrik_element_birthday', 'plugin', 'birthday', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_birthday\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_BIRTHDAY_DESCRIPTION\",\"group\":\"\",\"filename\":\"birthday\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10021', 'plg_fabrik_element_button', 'plugin', 'button', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_button\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_BUTTON_DESCRIPTION\",\"group\":\"\",\"filename\":\"button\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10022', 'plg_fabrik_element_calc', 'plugin', 'calc', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_calc\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_CALC_DESCRIPTION\",\"group\":\"\",\"filename\":\"calc\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10023', 'plg_fabrik_element_captcha', 'plugin', 'captcha', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_captcha\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_CAPTCHA_DESCRIPTION\",\"group\":\"\",\"filename\":\"captcha\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10024', 'plg_fabrik_element_cascadingdropdown', 'plugin', 'cascadingdropdown', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_cascadingdropdown\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_CASCADINGDROPDOWN_DESCRIPTION\",\"group\":\"\",\"filename\":\"cascadingdropdown\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10025', 'plg_fabrik_element_checkbox', 'plugin', 'checkbox', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_checkbox\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_CHECKBOX_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkbox\"}', '{\"defaultFieldType\":\"TEXT\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10026', 'plg_fabrik_element_colourpicker', 'plugin', 'colourpicker', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_colourpicker\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_COLOURPICKER_DESCRIPTION\",\"group\":\"\",\"filename\":\"colourpicker\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10027', 'plg_fabrik_element_count', 'plugin', 'count', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_count\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_COUNT_DESCRIPTION\",\"group\":\"\",\"filename\":\"count\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10028', 'plg_fabrik_element_databasejoin', 'plugin', 'databasejoin', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_databasejoin\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_DATABASEJOIN_DESCRIPTION\",\"group\":\"\",\"filename\":\"databasejoin\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10029', 'plg_fabrik_element_date', 'plugin', 'date', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_date\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_DATE_DESCRIPTION\",\"group\":\"\",\"filename\":\"date\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10030', 'plg_fabrik_element_digsig', 'plugin', 'digsig', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_digsig\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_DIGSIG_DESCRIPTION\",\"group\":\"\",\"filename\":\"digsig\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10031', 'plg_fabrik_element_display', 'plugin', 'display', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_display\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_DISPLAY_DESCRIPTION\",\"group\":\"\",\"filename\":\"display\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10032', 'plg_fabrik_element_dropdown', 'plugin', 'dropdown', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_dropdown\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_DROPDOWN_DESCRIPTION\",\"group\":\"\",\"filename\":\"dropdown\"}', '{\"defaultFieldType\":\"TEXT\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10033', 'plg_fabrik_element_fbactivityfeed', 'plugin', 'fbactivityfeed', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fbactivityfeed\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FBACTIVITYFEED_DESCRIPTION\",\"group\":\"\",\"filename\":\"fbactivityfeed\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10034', 'plg_fabrik_element_fbcomment', 'plugin', 'fbcomment', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fbcomment\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FBCOMMENT_DESCRIPTION\",\"group\":\"\",\"filename\":\"fbcomment\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10035', 'plg_fabrik_element_fblike', 'plugin', 'fblike', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fblike\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FBLIKE_DESCRIPTION\",\"group\":\"\",\"filename\":\"fblike\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10036', 'plg_fabrik_element_fblikebox', 'plugin', 'fblikebox', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fblikebox\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FBLIKEBOX_DESCRIPTION\",\"group\":\"\",\"filename\":\"fblikebox\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10037', 'plg_fabrik_element_fbrecommendations', 'plugin', 'fbrecommendations', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fbrecommendations\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FBRECOMMENDATIONS_DESCRIPTION\",\"group\":\"\",\"filename\":\"fbrecommendations\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10038', 'plg_fabrik_element_field', 'plugin', 'field', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_field\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FIELD_DESCRIPTION\",\"group\":\"\",\"filename\":\"field\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10039', 'plg_fabrik_element_fileupload', 'plugin', 'fileupload', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_fileupload\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FILEUPLOAD_DESCRIPTION\",\"group\":\"\",\"filename\":\"fileupload\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10040', 'plg_fabrik_element_folder', 'plugin', 'folder', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_folder\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_FOLDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"folder\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10041', 'plg_fabrik_element_googlemap', 'plugin', 'googlemap', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_googlemap\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_GOOGLEMAP_DESCRIPTION\",\"group\":\"\",\"filename\":\"googlemap\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10042', 'plg_fabrik_element_googleometer', 'plugin', 'googleometer', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_googleometer\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_GOOGLEOMETER_DESCRIPTION\",\"group\":\"\",\"filename\":\"googleometer\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10043', 'plg_fabrik_element_image', 'plugin', 'image', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_image\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_IMAGE_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10044', 'plg_fabrik_element_internalid', 'plugin', 'internalid', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_internalid\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_INTERNALID_DESCRIPTION\",\"group\":\"\",\"filename\":\"internalid\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10045', 'plg_fabrik_element_ip', 'plugin', 'ip', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_ip\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_IP_DESCRIPTION\",\"group\":\"\",\"filename\":\"ip\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10046', 'plg_fabrik_element_jsperiodical', 'plugin', 'jsperiodical', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_jsperiodical\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_JSPERIODICAL_DESCRIPTION\",\"group\":\"\",\"filename\":\"jsperiodical\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10047', 'plg_fabrik_element_link', 'plugin', 'link', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_link\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_LINK_DESCRIPTION\",\"group\":\"\",\"filename\":\"link\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10048', 'plg_fabrik_element_notes', 'plugin', 'notes', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_notes\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_NOTES_DESCRIPTION\",\"group\":\"\",\"filename\":\"notes\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10049', 'plg_fabrik_element_password', 'plugin', 'password', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_password\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_PASSWORD_DESCRIPTION\",\"group\":\"\",\"filename\":\"password\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10050', 'plg_fabrik_element_picklist', 'plugin', 'picklist', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_picklist\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_PICKLIST_DESCRIPTION\",\"group\":\"\",\"filename\":\"picklist\"}', '{\"defaultFieldType\":\"TEXT\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10051', 'plg_fabrik_element_radiobutton', 'plugin', 'radiobutton', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_radiobutton\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_RADIOBUTTON_DESCRIPTION\",\"group\":\"\",\"filename\":\"radiobutton\"}', '{\"defaultFieldType\":\"TEXT\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10052', 'plg_fabrik_element_rating', 'plugin', 'rating', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_rating\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_RATING_DESCRIPTION\",\"group\":\"\",\"filename\":\"rating\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10053', 'plg_fabrik_element_slider', 'plugin', 'slider', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_slider\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_SLIDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"slider\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10054', 'plg_fabrik_element_spotify', 'plugin', 'spotify', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_spotify\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clabyurn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_SPOTIFY_DESCRIPTION\",\"group\":\"\",\"filename\":\"spotify\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10055', 'plg_fabrik_element_tags', 'plugin', 'tags', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_tags\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_TAGS_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10056', 'plg_fabrik_element_textarea', 'plugin', 'textarea', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_textarea\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_TEXTAREA_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10057', 'plg_fabrik_element_thumbs', 'plugin', 'thumbs', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_thumbs\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Thomas Spierckel\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"tom@spierckel.net\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_THUMBS_DESCRIPTION\",\"group\":\"\",\"filename\":\"thumbs\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10058', 'plg_fabrik_element_time', 'plugin', 'time', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_time\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Jaanus Nurmoja\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"jaanus.nurmoja@gmail.com\",\"authorUrl\":\"www.facebook.com\\/jaanus.nurmoja\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_TIME_DESCRIPTION\",\"group\":\"\",\"filename\":\"time\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10059', 'plg_fabrik_element_timer', 'plugin', 'timer', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_timer\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_TIMER_DESCRIPTION\",\"group\":\"\",\"filename\":\"timer\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10060', 'plg_fabrik_element_timestamp', 'plugin', 'timestamp', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_timestamp\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_TIMESTAMP_DESCRIPTION\",\"group\":\"\",\"filename\":\"timestamp\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10061', 'plg_fabrik_element_user', 'plugin', 'user', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_user\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_USER_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10062', 'plg_fabrik_element_usergroup', 'plugin', 'usergroup', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_usergroup\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_USERGROUP_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergroup\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10063', 'plg_fabrik_element_viewlevel', 'plugin', 'viewlevel', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_viewlevel\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_VIEWLEVEL_DESCRIPTION\",\"group\":\"\",\"filename\":\"viewlevel\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10064', 'plg_fabrik_element_yesno', 'plugin', 'yesno', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_yesno\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_YESNO_DESCRIPTION\",\"group\":\"\",\"filename\":\"yesno\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10065', 'plg_fabrik_element_youtube', 'plugin', 'youtube', 'fabrik_element', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_element_youtube\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"peamak\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"pktom64@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_ELEMENT_YOUTUBE_DESCRIPTION\",\"group\":\"\",\"filename\":\"youtube\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10066', 'plg_fabrik_form_alphauserpoints', 'plugin', 'alphauserpoints', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_alphauserpoints\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_ALPHAUSERPOINTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"alphauserpoints\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10067', 'plg_fabrik_form_article', 'plugin', 'article', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_article\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_ARTICLE_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10068', 'plg_fabrik_form_autofill', 'plugin', 'autofill', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_autofill\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_AUTOFILL_DESCRIPTION\",\"group\":\"\",\"filename\":\"autofill\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10069', 'plg_fabrik_form_clone', 'plugin', 'clone', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_clone\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_CLONE_DESCRIPTION\",\"group\":\"\",\"filename\":\"clone\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10070', 'plg_fabrik_form_comment', 'plugin', 'comment', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_comment\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_COMMENT_DESCRIPTION\",\"group\":\"\",\"filename\":\"comment\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10071', 'plg_fabrik_form_confirmation', 'plugin', 'confirmation', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_confirmation\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_CONFIRMATION_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmation\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10072', 'plg_fabrik_form_email', 'plugin', 'email', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_email\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_EMAIL_DESCRIPTION\",\"group\":\"\",\"filename\":\"email\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10073', 'plg_fabrik_form_exif', 'plugin', 'exif', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_exif\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_EXIF_DESCRIPTION\",\"group\":\"\",\"filename\":\"exif\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10074', 'plg_fabrik_form_ftp', 'plugin', 'ftp', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_ftp\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_FTP_DESCRIPTION\",\"group\":\"\",\"filename\":\"ftp\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10075', 'plg_fabrik_form_juser', 'plugin', 'juser', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_juser\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_JUSER_DESCRIPTION\",\"group\":\"\",\"filename\":\"juser\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10076', 'plg_fabrik_form_kunena', 'plugin', 'kunena', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_kunena\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_KUNENA_DESCRIPTION\",\"group\":\"\",\"filename\":\"kunena\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10077', 'plg_fabrik_form_limit', 'plugin', 'limit', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_limit\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_LIMIT_DESCRIPTION\",\"group\":\"\",\"filename\":\"limit\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10078', 'plg_fabrik_form_logs', 'plugin', 'logs', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_logs\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Peamak\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"pktom64@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_LOGS_DESCRIPTION\",\"group\":\"\",\"filename\":\"logs\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10079', 'plg_fabrik_form_mailchimp', 'plugin', 'mailchimp', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_mailchimp\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_MAILCHIMP_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailchimp\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10080', 'plg_fabrik_form_notification', 'plugin', 'notification', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_notification\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_NOTIFICATION_DESCRIPTION\",\"group\":\"\",\"filename\":\"notification\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10081', 'plg_fabrik_form_paginate', 'plugin', 'paginate', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_paginate\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_PAGINATE_DESCRIPTION\",\"group\":\"\",\"filename\":\"paginate\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10082', 'plg_fabrik_form_paypal', 'plugin', 'paypal', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_paypal\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_PAYPAL_DESCRIPTION\",\"group\":\"\",\"filename\":\"paypal\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10083', 'plg_fabrik_form_php', 'plugin', 'php', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_php\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_PHP_DESCRIPTION\",\"group\":\"\",\"filename\":\"php\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10084', 'plg_fabrik_form_receipt', 'plugin', 'receipt', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_receipt\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_RECEIPT_DESCRIPTION\",\"group\":\"\",\"filename\":\"receipt\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10085', 'plg_fabrik_form_redirect', 'plugin', 'redirect', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_redirect\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_REDIRECT_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10086', 'plg_fabrik_form_rest', 'plugin', 'rest', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_rest\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_REST_DESCRIPTION\",\"group\":\"\",\"filename\":\"rest\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10087', 'plg_fabrik_form_salesforce', 'plugin', 'salesforce', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_salesforce\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_SALESFORCE_DESCRIPTION\",\"group\":\"\",\"filename\":\"salesforce\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10088', 'plg_fabrik_form_sms', 'plugin', 'sms', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_sms\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_SMS_DESCRIPTION\",\"group\":\"\",\"filename\":\"sms\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10089', 'plg_fabrik_form_subscriptions', 'plugin', 'subscriptions', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_subscriptions\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_SUBSCRIPTIONS_DESCRIPTION\",\"group\":\"\",\"filename\":\"subscriptions\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10090', 'plg_fabrik_form_twitter', 'plugin', 'twitter', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_twitter\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_TWITTER_DESCRIPTION\",\"group\":\"\",\"filename\":\"twitter\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10091', 'plg_fabrik_form_upsert', 'plugin', 'upsert', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_upsert\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_UPSERT_DESCRIPTION\",\"group\":\"\",\"filename\":\"upsert\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10092', 'plg_fabrik_form_vbforum', 'plugin', 'vbforum', 'fabrik_form', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_form_vbforum\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FORM_VBFORUM_DESCRIPTION\",\"group\":\"\",\"filename\":\"vbforum\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10093', 'plg_fabrik_list_article', 'plugin', 'article', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_article\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Fabrikar\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.o.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_ARTICLE_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10094', 'plg_fabrik_list_candeleterow', 'plugin', 'candeleterow', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_candeleterow\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_CANDELETEROW_DESCRIPTION\",\"group\":\"\",\"filename\":\"candeleterow\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10095', 'plg_fabrik_list_caneditrow', 'plugin', 'caneditrow', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_caneditrow\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_CANEDITROW_DESCRIPTION\",\"group\":\"\",\"filename\":\"caneditrow\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10096', 'plg_fabrik_list_copy', 'plugin', 'copy', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_copy\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_COPY_DESCRIPTION\",\"group\":\"\",\"filename\":\"copy\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10097', 'plg_fabrik_list_download', 'plugin', 'download', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_download\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_DOWNLOAD_DESCRIPTION\",\"group\":\"\",\"filename\":\"download\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10098', 'plg_fabrik_list_email', 'plugin', 'email', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_email\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.o.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_EMAIL_DESCRIPTION\",\"group\":\"\",\"filename\":\"email\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10099', 'plg_fabrik_list_filter_view', 'plugin', 'filter_view', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_filter_view\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_FILTER_VIEW_DESCRIPTION\",\"group\":\"\",\"filename\":\"filter_view\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10100', 'plg_fabrik_list_inlineedit', 'plugin', 'inlineedit', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_inlineedit\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_INLINEEDIT_DESCRIPTION\",\"group\":\"\",\"filename\":\"inlineedit\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10101', 'plg_fabrik_list_js', 'plugin', 'js', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_js\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_JS_DESCRIPTION\",\"group\":\"\",\"filename\":\"js\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10102', 'plg_fabrik_list_listcsv', 'plugin', 'listcsv', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_listcsv\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_LISTCSV_DESCRIPTION\",\"group\":\"\",\"filename\":\"listcsv\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10103', 'plg_fabrik_list_order', 'plugin', 'order', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_order\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_ORDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"order\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10104', 'plg_fabrik_list_php', 'plugin', 'php', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_php\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_PHP_DESCRIPTION\",\"group\":\"\",\"filename\":\"php\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10105', 'plg_fabrik_list_php_events', 'plugin', 'php_events', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_php_events\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Mauro H. Leggieri\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"mxmauro@mauroleggieri.com.ar\",\"authorUrl\":\"www.yodespotrico.com.ar\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_PHP_EVENTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"php_events\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10106', 'plg_fabrik_list_pivot', 'plugin', 'pivot', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_pivot\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_PIVOT_DESCRIPTION\",\"group\":\"\",\"filename\":\"pivot\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10107', 'plg_fabrik_list_radius_lookup', 'plugin', 'radius_lookup', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_radius_lookup\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_RADIUS_LOOKUP_DESCRIPTION\",\"group\":\"\",\"filename\":\"radius_lookup\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10108', 'plg_fabrik_list_radius_search', 'plugin', 'radius_search', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_radius_search\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_RADIUS_SEARCH_DESCRIPTION\",\"group\":\"\",\"filename\":\"radius_search\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10109', 'plg_fabrik_list_update_col', 'plugin', 'update_col', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_update_col\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_UPDATE_COL_DESCRIPTION\",\"group\":\"\",\"filename\":\"update_col\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10110', 'plg_fabrik_list_webservice', 'plugin', 'webservice', 'fabrik_list', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_list_webservice\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_LIST_WEBSERVICE_DESCRIPTION\",\"group\":\"\",\"filename\":\"webservice\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10111', 'plg_fabrik_validationrule_akismet', 'plugin', 'akismet', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_akismet\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_AKISMET_DESCRIPTION\",\"group\":\"\",\"filename\":\"akismet\"}', '{\"icon\":\"filter\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10112', 'plg_fabrik_validationrule_areuniquevalues', 'plugin', 'areuniquevalues', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_areuniquevalues\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Lieven Gryp\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"lieven.gryp@telenet.be\",\"authorUrl\":\"www.acpegasus.be\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_AREUNIQUEVALUES_DESCRIPTION\",\"group\":\"\",\"filename\":\"areuniquevalues\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10113', 'plg_fabrik_validationrule_emailexists', 'plugin', 'emailexists', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_emailexists\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_EMAILEXISTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailexists\"}', '{\"icon\":\"envelope\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10114', 'plg_fabrik_validationrule_isalphanumeric', 'plugin', 'isalphanumeric', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isalphanumeric\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISALPHANUMERIC_DESCRIPTION\",\"group\":\"\",\"filename\":\"isalphanumeric\"}', '{\"icon\":\"font\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10115', 'plg_fabrik_validationrule_isemail', 'plugin', 'isemail', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isemail\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISEMAIL_DESCRIPTION\",\"group\":\"\",\"filename\":\"isemail\"}', '{\"icon\":\"envelope\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10116', 'plg_fabrik_validationrule_isgreaterorlessthan', 'plugin', 'isgreaterorlessthan', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isgreaterorlessthan\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISGREATERORLESSTHAN_DESCRIPTION\",\"group\":\"\",\"filename\":\"isgreaterorlessthan\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10117', 'plg_fabrik_validationrule_isnot', 'plugin', 'isnot', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isnot\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISNOT_DESCRIPTION\",\"group\":\"\",\"filename\":\"isnot\"}', '{\"icon\":\"exclamation-sign\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10118', 'plg_fabrik_validationrule_isnumeric', 'plugin', 'isnumeric', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isnumeric\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISNUMERIC_DESCRIPTION\",\"group\":\"\",\"filename\":\"isnumeric\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10119', 'plg_fabrik_validationrule_isuniquevalue', 'plugin', 'isuniquevalue', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_isuniquevalue\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_ISUNIQUEVALUE_DESCRIPTION\",\"group\":\"\",\"filename\":\"isuniquevalue\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10120', 'plg_fabrik_validationrule_notempty', 'plugin', 'notempty', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_notempty\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_NOTEMPTY_DESCRIPTION\",\"group\":\"\",\"filename\":\"notempty\"}', '{\"icon\":\"eye-open\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10121', 'plg_fabrik_validationrule_openprovider', 'plugin', 'openprovider', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_openprovider\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_OPENPROVIDER_DESCRIPTION\",\"group\":\"\",\"filename\":\"openprovider\"}', '{\"icon\":\"globe\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10122', 'plg_fabrik_validationrule_php', 'plugin', 'php', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_php\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_PHP_DESCRIPTION\",\"group\":\"\",\"filename\":\"php\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10123', 'plg_fabrik_validationrule_regex', 'plugin', 'regex', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_regex\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_REGEX_DESCRIPTION\",\"group\":\"\",\"filename\":\"regex\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10124', 'plg_fabrik_validationrule_specialchars', 'plugin', 'specialchars', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_specialchars\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_SPECIALCHARS_DESCRIPTION\",\"group\":\"\",\"filename\":\"specialchars\"}', '{\"icon\":\"star\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10125', 'plg_fabrik_validationrule_userexists', 'plugin', 'userexists', 'fabrik_validationrule', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_validationrule_userexists\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VALIDATIONRULE_USEREXISTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"userexists\"}', '{\"icon\":\"user\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10126', 'plg_fabrik_visualization_approvals', 'plugin', 'approvals', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_approvals\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_APPROVALS_DESCRIPTION\",\"group\":\"\",\"filename\":\"approvals\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10127', 'plg_fabrik_visualization_calendar', 'plugin', 'calendar', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_calendar\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_CALENDAR_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10128', 'plg_fabrik_visualization_chart', 'plugin', 'chart', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_chart\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_CHART_DESCRIPTION\",\"group\":\"\",\"filename\":\"chart\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10129', 'plg_fabrik_visualization_coverflow', 'plugin', 'coverflow', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_coverflow\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_COVERFLOW_DESCRIPTION\",\"group\":\"\",\"filename\":\"coverflow\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10130', 'PLG_FABRIK_VISUALIZATION_FULLCALENDAR', 'plugin', 'fullcalendar', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"PLG_FABRIK_VISUALIZATION_FULLCALENDAR\",\"type\":\"plugin\",\"creationDate\":\"August 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.2\",\"description\":\"PLG_VISUALIZATION_FULLCALENDAR_DESCRIPTION\",\"group\":\"\",\"filename\":\"fullcalendar\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10131', 'plg_fabrik_visualization_fusion_gantt_chart', 'plugin', 'fusion_gantt_chart', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_fusion_gantt_chart\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_FUSION_GANTT_CHART_DESCRIPTION\",\"group\":\"\",\"filename\":\"fusion_gantt_chart\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10132', 'plg_fabrik_visualization_fusioncharts', 'plugin', 'fusionchart', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_fusioncharts\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_FUSIONCHARTS_DESCRIPTION\",\"group\":\"\",\"filename\":\"fusionchart\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10133', 'plg_fabrik_visualization_googlemap', 'plugin', 'googlemap', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_googlemap\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_GOOGLEMAP_DESCRIPTION\",\"group\":\"\",\"filename\":\"googlemap\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10134', 'plg_fabrik_visualization_media', 'plugin', 'media', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_media\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_MEDIA_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10135', 'plg_fabrik_visualization_nvd3_chart', 'plugin', 'nvd3_chart', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_nvd3_chart\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_NVD3_CHART_DESCRIPTION\",\"group\":\"\",\"filename\":\"nvd3_chart\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10136', 'plg_fabrik_visualization_slideshow', 'plugin', 'slideshow', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_slideshow\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Hugh Messenger\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"hugh.messenger@gmail.com\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_SLIDESHOW_DESCRIPTION\",\"group\":\"\",\"filename\":\"slideshow\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10137', 'plg_fabrik_visualization_timeline', 'plugin', 'timeline', 'fabrik_visualization', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_visualization_timeline\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_VISUALIZATION_TIMELINE_DESCRIPTION\",\"group\":\"\",\"filename\":\"timeline\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10138', 'plg_fabrik_search', 'plugin', 'fabrik', 'search', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_search\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Rob Clayburn\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.fabrikar.com\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_SEARCH_DESCRIPTION\",\"group\":\"\",\"filename\":\"fabrik\"}', '{\"search_limit\":\"50\",\"search_section_heading\":\"Fabrik\\/record\",\"include_list_title\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10139', 'plg_fabrik_system', 'plugin', 'fabrik', 'system', '0', '1', '1', '0', '{\"name\":\"plg_fabrik_system\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Fabrikar.com\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.pollen-8.co.uk\",\"version\":\"3.3.4\",\"description\":\"PLG_FABRIK_SYSTEM_DESCRIPTION\",\"group\":\"\",\"filename\":\"fabrik\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `zwkgr_extensions` VALUES ('10140', 'System - Fabrik Scheduled Tasks', 'plugin', 'fabrikcron', 'system', '0', '1', '1', '0', '{\"name\":\"System - Fabrik Scheduled Tasks\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Pollen 8\",\"copyright\":\"Copyright (C) 2005-2015 fabrikar.com - All rights reserved.\",\"authorEmail\":\"rob@pollen-8.co.uk\",\"authorUrl\":\"www.pollen-8.co.uk\",\"version\":\"3.3.4\",\"description\":\"Runs Fabrik scheduled tasks\",\"group\":\"\",\"filename\":\"fabrikcron\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for zwkgr_fabrik_attending
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_attending`;
CREATE TABLE `zwkgr_fabrik_attending` (
  `user_id` int(6) NOT NULL,
  `list_id` int(6) NOT NULL,
  `form_id` int(6) NOT NULL,
  `row_id` int(6) NOT NULL,
  `element_id` int(6) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`list_id`,`form_id`,`row_id`,`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_attending
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_comments
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_comments`;
CREATE TABLE `zwkgr_fabrik_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ipaddress` char(14) NOT NULL,
  `reply_to` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `formid` int(6) NOT NULL,
  `row_id` int(6) NOT NULL,
  `rating` char(2) NOT NULL,
  `annonymous` tinyint(1) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `diggs` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_comments
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_connections
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_connections`;
CREATE TABLE `zwkgr_fabrik_connections` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `default` int(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_connections
-- ----------------------------
INSERT INTO `zwkgr_fabrik_connections` VALUES ('1', 'mysql', 'fabrik', '2B10 12A 33177363B7D404B11', 'fabrik', 'site database', '1', '0', '0000-00-00 00:00:00', '1', '{\"encryptedPw\":true}');

-- ----------------------------
-- Table structure for zwkgr_fabrik_cron
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_cron`;
CREATE TABLE `zwkgr_fabrik_cron` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `frequency` smallint(6) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(6) NOT NULL,
  `created_by_alias` varchar(30) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(30) NOT NULL,
  `checked_out` int(6) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `lastrun` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_cron
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_elements
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_elements`;
CREATE TABLE `zwkgr_fabrik_elements` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `group_id` int(4) NOT NULL,
  `plugin` varchar(100) NOT NULL,
  `label` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL DEFAULT '0',
  `default` text NOT NULL,
  `hidden` int(1) NOT NULL,
  `eval` int(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `show_in_list_summary` int(1) DEFAULT NULL,
  `filter_type` varchar(20) DEFAULT NULL,
  `filter_exact_match` int(1) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `link_to_detail` int(1) NOT NULL DEFAULT '0',
  `primary_key` int(1) NOT NULL DEFAULT '0',
  `auto_increment` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `use_in_page_title` int(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_elements
-- ----------------------------
INSERT INTO `zwkgr_fabrik_elements` VALUES ('1', 'id', '1', 'internalid', 'id', '0', '0000-00-00 00:00:00', '2015-11-09 08:55:52', '634', 'rob', '0000-00-00 00:00:00', '0', '3', '0', '', '1', '0', '1', '1', null, null, '1', '1', '1', '1', '1', '0', '0', '{\"rollover\":\"\",\"comment\":\"\",\"sub_default_value\":\"\",\"sub_default_label\":\"\",\"element_before_label\":1,\"allow_frontend_addtocheckbox\":0,\"database_join_display_type\":\"dropdown\",\"joinType\":\"simple\",\"join_conn_id\":-1,\"date_table_format\":\"Y-m-d\",\"date_form_format\":\"Y-m-d H:i:s\",\"date_showtime\":0,\"date_time_format\":\"H:i\",\"date_defaulttotoday\":1,\"date_firstday\":0,\"multiple\":0,\"allow_frontend_addtodropdown\":0,\"password\":0,\"maxlength\":255,\"text_format\":\"text\",\"integer_length\":6,\"decimal_length\":2,\"guess_linktype\":0,\"disable\":0,\"readonly\":0,\"ul_max_file_size\":16000,\"ul_email_file\":0,\"ul_file_increment\":0,\"upload_allow_folderselect\":1,\"fu_fancy_upload\":0,\"upload_delete_image\":1,\"make_link\":0,\"fu_show_image_in_table\":0,\"image_library\":\"gd2\",\"make_thumbnail\":0,\"imagepath\":\"\\/\",\"selectImage_root_folder\":\"\\/\",\"image_front_end_select\":0,\"show_image_in_table\":0,\"image_float\":\"none\",\"link_target\":\"_self\",\"radio_element_before_label\":0,\"options_per_row\":4,\"ck_options_per_row\":4,\"allow_frontend_addtoradio\":0,\"use_wysiwyg\":0,\"my_table_data\":\"id\",\"update_on_edit\":0,\"view_access\":1,\"show_in_rss_feed\":0,\"show_label_in_rss_feed\":0,\"icon_folder\":-1,\"use_as_row_class\":0,\"filter_access\":1,\"full_words_only\":0,\"inc_in_adv_search\":1,\"sum_on\":0,\"sum_access\":0,\"avg_on\":0,\"avg_access\":0,\"median_on\":0,\"median_access\":0,\"count_on\":0,\"count_access\":0}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('2', 'date_time', '1', 'date', 'date time', '634', '2015-11-09 11:01:39', '2015-11-09 08:55:52', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '1', '0', '2', '1', null, null, '1', '1', '0', '0', '1', '0', '0', '{\"rollover\":\"\",\"comment\":\"\",\"sub_default_value\":\"\",\"sub_default_label\":\"\",\"element_before_label\":1,\"allow_frontend_addtocheckbox\":0,\"database_join_display_type\":\"dropdown\",\"joinType\":\"simple\",\"join_conn_id\":-1,\"date_table_format\":\"Y-m-d\",\"date_form_format\":\"Y-m-d H:i:s\",\"date_showtime\":0,\"date_time_format\":\"H:i\",\"date_defaulttotoday\":1,\"date_firstday\":0,\"multiple\":0,\"allow_frontend_addtodropdown\":0,\"password\":0,\"maxlength\":255,\"text_format\":\"text\",\"integer_length\":6,\"decimal_length\":2,\"guess_linktype\":0,\"disable\":0,\"readonly\":0,\"ul_max_file_size\":16000,\"ul_email_file\":0,\"ul_file_increment\":0,\"upload_allow_folderselect\":1,\"fu_fancy_upload\":0,\"upload_delete_image\":1,\"make_link\":0,\"fu_show_image_in_table\":0,\"image_library\":\"gd2\",\"make_thumbnail\":0,\"imagepath\":\"\\/\",\"selectImage_root_folder\":\"\\/\",\"image_front_end_select\":0,\"show_image_in_table\":0,\"image_float\":\"none\",\"link_target\":\"_self\",\"radio_element_before_label\":0,\"options_per_row\":4,\"ck_options_per_row\":4,\"allow_frontend_addtoradio\":0,\"use_wysiwyg\":0,\"my_table_data\":\"id\",\"update_on_edit\":0,\"view_access\":1,\"show_in_rss_feed\":0,\"show_label_in_rss_feed\":0,\"icon_folder\":-1,\"use_as_row_class\":0,\"filter_access\":1,\"full_words_only\":0,\"inc_in_adv_search\":1,\"sum_on\":0,\"sum_access\":0,\"avg_on\":0,\"avg_access\":0,\"median_on\":0,\"median_access\":0,\"count_on\":0,\"count_access\":0}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('3', 'access', '1', 'access', 'access', '0', '0000-00-00 00:00:00', '2015-11-09 08:57:12', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '3', '1', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('4', 'attending', '1', 'attending', 'attending', '0', '0000-00-00 00:00:00', '2015-11-09 08:57:24', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '4', '1', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('5', 'birthday', '1', 'birthday', 'birthday', '0', '0000-00-00 00:00:00', '2015-11-09 08:57:35', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '5', '1', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"birthday_daylabel\":\"\",\"birthday_monthlabel\":\"\",\"birthday_yearlabel\":\"\",\"birthday_yearopt\":\"number\",\"birthday_yearstart\":\"100\",\"birthday_forward\":\"0\",\"advanced_behavior\":\"0\",\"details_date_format\":\"d.m.Y\",\"details_dateandage\":\"0\",\"list_date_format\":\"d.m.Y\",\"list_age_format\":\"no\",\"empty_is_null\":\"1\",\"list_filter_layout\":\"individual\",\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('6', 'button', '1', 'button', 'button', '0', '0000-00-00 00:00:00', '2015-11-09 08:57:43', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '6', '0', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"button_type\":\"button\",\"bootstrap_class\":\"\",\"bootstrap_icon\":\"\",\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('7', 'calc', '1', 'calc', 'calc', '0', '0000-00-00 00:00:00', '2015-11-09 08:58:02', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '7', '0', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"calc_calculation\":\"return 3 * 6;\",\"calc_format_string\":\"\",\"calc_on_save_only\":\"0\",\"calc_ajax\":\"0\",\"calc_ajax_observe\":\"\",\"calc_on_load\":\"0\",\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('8', 'captcha', '1', 'captcha', 'captcha', '0', '0000-00-00 00:00:00', '2015-11-09 08:58:21', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '8', '0', '', '1', '0', '0', '0', '0', '1', '0', '0', '{\"captcha-showloggedin\":\"0\",\"captcha-method\":\"standard\",\"captcha-font-size\":\"30\",\"captcha-angle\":\"0\",\"captcha-padding\":\"10\",\"captcha-chars\":\"6\",\"captcha-bg\":\"#ffffff\",\"captcha-noise-color\":\"#0000ff\",\"captcha-text-color\":\"#0000ff\",\"recaptcha_publickey\":\"\",\"recaptcha_privatekey\":\"\",\"recaptcha_theme\":\"red\",\"recaptcha_lang\":\"en\",\"playthru_publisher_key\":\"\",\"playthru_scoring_key\":\"\",\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');
INSERT INTO `zwkgr_fabrik_elements` VALUES ('9', 'checkbox', '1', 'checkbox', 'checkbox', '0', '0000-00-00 00:00:00', '2015-11-09 08:58:40', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0', '', '0', '0', '8', '0', '', '1', '1', '0', '0', '0', '1', '0', '0', '{\"sub_options\":{\"sub_values\":[\"1\",\"2\"],\"sub_labels\":[\"1\",\"2\"]},\"ck_options_per_row\":\"4\",\"sub_default_value\":\"\",\"sub_default_label\":\"\",\"allow_frontend_addtocheckbox\":\"0\",\"chk-allowadd-onlylabel\":\"0\",\"chk-savenewadditions\":\"0\",\"options_split_str\":\"\",\"dropdown_populate\":\"\",\"show_in_rss_feed\":\"0\",\"show_label_in_rss_feed\":\"0\",\"use_as_rss_enclosure\":\"0\",\"rollover\":\"\",\"tipseval\":\"0\",\"tiplocation\":\"top-left\",\"labelindetails\":\"0\",\"labelinlist\":\"0\",\"comment\":\"\",\"edit_access\":\"1\",\"view_access\":\"1\",\"view_access_user\":\"\",\"list_view_access\":\"1\",\"encrypt\":\"0\",\"can_order\":\"0\",\"alt_list_heading\":\"\",\"custom_link\":\"\",\"custom_link_target\":\"\",\"custom_link_indetails\":\"1\",\"use_as_row_class\":\"0\",\"include_in_list_query\":\"1\",\"always_render\":\"0\",\"icon_folder\":\"0\",\"icon_hovertext\":\"1\",\"icon_file\":\"\",\"icon_subdir\":\"\",\"filter_length\":\"20\",\"filter_access\":\"1\",\"full_words_only\":\"0\",\"filter_required\":\"0\",\"filter_build_method\":\"0\",\"filter_groupby\":\"text\",\"inc_in_adv_search\":\"1\",\"filter_class\":\"input-medium\",\"filter_responsive_class\":\"\",\"tablecss_header_class\":\"\",\"tablecss_header\":\"\",\"tablecss_cell_class\":\"\",\"tablecss_cell\":\"\",\"sum_on\":\"0\",\"sum_label\":\"Sum\",\"sum_access\":\"1\",\"sum_split\":\"\",\"avg_on\":\"0\",\"avg_label\":\"Average\",\"avg_access\":\"1\",\"avg_round\":\"0\",\"avg_split\":\"\",\"median_on\":\"0\",\"median_label\":\"Median\",\"median_access\":\"1\",\"median_split\":\"\",\"count_on\":\"0\",\"count_label\":\"Count\",\"count_condition\":\"\",\"count_access\":\"1\",\"count_split\":\"\",\"custom_calc_on\":\"0\",\"custom_calc_label\":\"Custom\",\"custom_calc_query\":\"\",\"custom_calc_access\":\"1\",\"custom_calc_split\":\"\",\"custom_calc_php\":\"\",\"validations\":[]}');

-- ----------------------------
-- Table structure for zwkgr_fabrik_form_sessions
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_form_sessions`;
CREATE TABLE `zwkgr_fabrik_form_sessions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `user_id` int(6) NOT NULL,
  `form_id` int(6) NOT NULL,
  `row_id` int(10) NOT NULL,
  `last_page` int(4) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_form_sessions
-- ----------------------------
INSERT INTO `zwkgr_fabrik_form_sessions` VALUES ('1', '564060a752157:1:1', '0', '1', '1', '0', 'http://localhost:81/joomla35/index.php/test-list/form/1/1', 'a:37:{s:9:\"test___id\";s:1:\"1\";s:16:\"test___date_time\";s:19:\"2015-11-09 08:55:58\";s:13:\"test___access\";s:0:\"\";s:15:\"test___birthday\";s:8:\"2009-4-5\";s:14:\"test___captcha\";s:6:\"q8z783\";s:15:\"test___checkbox\";a:1:{i:1;s:1:\"2\";}s:6:\"listid\";s:1:\"1\";s:7:\"listref\";s:1:\"1\";s:5:\"rowid\";s:1:\"1\";s:6:\"Itemid\";s:3:\"111\";s:6:\"option\";s:10:\"com_fabrik\";s:4:\"task\";s:12:\"form.process\";s:8:\"isMambot\";s:0:\"\";s:6:\"formid\";s:1:\"1\";s:12:\"returntoform\";s:1:\"0\";s:15:\"fabrik_referrer\";s:48:\"http://localhost:81/joomla35/index.php/test-list\";s:11:\"fabrik_ajax\";s:1:\"0\";s:7:\"package\";s:6:\"fabrik\";s:9:\"packageId\";s:1:\"0\";s:32:\"6db9afc230e5423f2eb047e87a77b29d\";s:1:\"1\";s:6:\"format\";s:4:\"html\";s:19:\"fabrik_repeat_group\";a:1:{i:1;s:1:\"1\";}s:6:\"Submit\";s:0:\"\";s:13:\"test___id_raw\";s:1:\"1\";s:20:\"test___date_time_raw\";s:19:\"2015-11-09 08:55:58\";s:17:\"test___access_raw\";s:0:\"\";s:20:\"test___attending_raw\";s:0:\"\";s:19:\"test___birthday_raw\";a:3:{i:0;s:1:\"5\";i:1;s:1:\"4\";i:2;s:4:\"2009\";}s:17:\"test___button_raw\";s:0:\"\";s:15:\"test___calc_raw\";s:0:\"\";s:18:\"test___captcha_raw\";s:6:\"q8z783\";s:19:\"test___checkbox_raw\";a:1:{i:1;s:1:\"2\";}s:8:\"__pk_val\";s:1:\"1\";s:4:\"view\";s:4:\"form\";s:16:\"test___attending\";s:0:\"\";s:13:\"test___button\";s:0:\"\";s:11:\"test___calc\";s:2:\"18\";}', '2015-11-09 09:58:48');

-- ----------------------------
-- Table structure for zwkgr_fabrik_formgroup
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_formgroup`;
CREATE TABLE `zwkgr_fabrik_formgroup` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `form_id` int(4) NOT NULL,
  `group_id` int(4) NOT NULL,
  `ordering` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_formgroup
-- ----------------------------
INSERT INTO `zwkgr_fabrik_formgroup` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for zwkgr_fabrik_forms
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_forms`;
CREATE TABLE `zwkgr_fabrik_forms` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `record_in_database` int(4) NOT NULL,
  `error` varchar(150) NOT NULL,
  `intro` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset_button_label` varchar(100) NOT NULL,
  `submit_button_label` varchar(100) NOT NULL,
  `form_template` varchar(255) DEFAULT NULL,
  `view_only_template` varchar(255) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_forms
-- ----------------------------
INSERT INTO `zwkgr_fabrik_forms` VALUES ('1', 'test', '1', 'Some parts of your form have not been correctly filled in', '', '2015-11-09 08:55:52', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Save', 'bootstrap', 'bootstrap', '1', '0', '{\"outro\":\"\",\"reset_button\":\"0\",\"reset_button_label\":\"Reset\",\"reset_icon\":\"\",\"reset_icon_location\":\"before\",\"copy_button\":\"0\",\"copy_button_label\":\"Save as copy\",\"copy_icon\":\"\",\"copy_icon_location\":\"before\",\"goback_button\":\"0\",\"goback_button_label\":\"Go back\",\"goback_icon\":\"\",\"goback_icon_location\":\"before\",\"apply_button\":\"0\",\"apply_button_label\":\"Apply\",\"apply_icon\":\"\",\"apply_icon_location\":\"before\",\"delete_button\":\"0\",\"delete_button_label\":\"Delete\",\"delete_icon\":\"\",\"delete_icon_location\":\"before\",\"submit_button\":\"1\",\"submit_button_label\":\"Save\",\"save_icon\":\"\",\"save_icon_location\":\"before\",\"submit_on_enter\":\"0\",\"labels_above\":\"0\",\"labels_above_details\":\"0\",\"pdf_template\":\"admin\",\"pdf_orientation\":\"portrait\",\"pdf_size\":\"letter\",\"show_title\":\"1\",\"print\":\"\",\"email\":\"\",\"pdf\":\"\",\"admin_form_template\":\"\",\"admin_details_template\":\"\",\"note\":\"\",\"show_referring_table_releated_data\":\"0\",\"tiplocation\":\"tip\",\"process_jplugins\":\"2\",\"ajax_validations\":\"0\",\"submit_success_msg\":\"\",\"suppress_msgs\":\"0\",\"show_loader_on_submit\":\"0\",\"spoof_check\":\"1\",\"multipage_save\":\"0\"}');

-- ----------------------------
-- Table structure for zwkgr_fabrik_groups
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_groups`;
CREATE TABLE `zwkgr_fabrik_groups` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `css` text NOT NULL,
  `label` varchar(100) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `is_join` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_groups
-- ----------------------------
INSERT INTO `zwkgr_fabrik_groups` VALUES ('1', 'test', '', 'test', '1', '2015-11-09 08:55:52', '634', 'rob', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '0', '0', '{\"repeat_group_button\":0,\"repeat_group_show_first\":1}');

-- ----------------------------
-- Table structure for zwkgr_fabrik_joins
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_joins`;
CREATE TABLE `zwkgr_fabrik_joins` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `list_id` int(6) NOT NULL,
  `element_id` int(6) NOT NULL,
  `join_from_table` varchar(255) NOT NULL,
  `table_join` varchar(255) NOT NULL,
  `table_key` varchar(255) NOT NULL,
  `table_join_key` varchar(255) NOT NULL,
  `join_type` varchar(255) NOT NULL,
  `group_id` int(10) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_joins
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_jsactions
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_jsactions`;
CREATE TABLE `zwkgr_fabrik_jsactions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(10) NOT NULL,
  `action` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_jsactions
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_lists
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_lists`;
CREATE TABLE `zwkgr_fabrik_lists` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `form_id` int(4) NOT NULL,
  `db_table_name` varchar(255) NOT NULL,
  `db_primary_key` varchar(255) NOT NULL,
  `auto_inc` int(1) NOT NULL,
  `connection_id` int(6) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(4) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(4) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `access` int(4) NOT NULL,
  `hits` int(4) NOT NULL,
  `rows_per_page` int(5) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order_by` varchar(255) NOT NULL,
  `order_dir` varchar(255) NOT NULL DEFAULT 'ASC',
  `filter_action` varchar(30) NOT NULL,
  `group_by` varchar(255) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_lists
-- ----------------------------
INSERT INTO `zwkgr_fabrik_lists` VALUES ('1', 'test', '', '1', 'test', 'test.id', '1', '1', '2015-11-09 08:55:52', '0', '', null, '0', '0', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '9', '10', 'bootstrap', '[]', '[]', 'onchange', '', '0', '{\"show-table-filters\":\"1\",\"advanced-filter\":\"0\",\"advanced-filter-default-statement\":\"=\",\"search-mode\":\"0\",\"search-mode-advanced\":\"0\",\"search_elements\":\"\",\"list_search_elements\":\"null\",\"search-all-label\":\"All\",\"require-filter\":\"0\",\"filter-dropdown-method\":\"0\",\"toggle_cols\":\"0\",\"list_filter_cols\":\"1\",\"empty_data_msg\":\"\",\"outro\":\"\",\"list_ajax\":\"0\",\"show-table-add\":\"1\",\"show-table-nav\":\"1\",\"show_displaynum\":\"1\",\"showall-records\":\"0\",\"show-total\":\"0\",\"sef-slug\":\"\",\"admin_template\":\"\",\"show-title\":\"1\",\"pdf\":\"\",\"pdf_template\":\"\",\"pdf_orientation\":\"portrait\",\"pdf_size\":\"a4\",\"bootstrap_stripped_class\":\"1\",\"bootstrap_bordered_class\":\"0\",\"bootstrap_condensed_class\":\"0\",\"bootstrap_hover_class\":\"1\",\"responsive_elements\":\"\",\"responsive_class\":\"\",\"list_responsive_elements\":\"null\",\"tabs_field\":\"\",\"tabs_max\":\"10\",\"tabs_all\":\"1\",\"list_ajax_links\":\"0\",\"actionMethod\":\"default\",\"detailurl\":\"\",\"detaillabel\":\"\",\"list_detail_link_target\":\"_self\",\"editurl\":\"\",\"editlabel\":\"\",\"checkboxLocation\":\"end\",\"addurl\":\"\",\"addlabel\":\"\",\"popup_width\":\"\",\"popup_height\":\"\",\"popup_offset_x\":\"\",\"popup_offset_y\":\"\",\"note\":\"\",\"alter_existing_db_cols\":\"default\",\"process-jplugins\":\"1\",\"enable_single_sorting\":\"default\",\"collation\":\"latin1_swedish_ci\",\"force_collate\":\"\",\"list_disable_caching\":\"0\",\"distinct\":\"1\",\"group_by_access\":\"1\",\"group_by_order\":\"\",\"group_by_template\":\"\",\"group_by_order_dir\":\"ASC\",\"group_by_start_collapsed\":\"0\",\"group_by_collapse_others\":\"0\",\"prefilter_query\":\"\",\"show_related_add\":\"0\",\"show_related_info\":\"0\",\"rss\":\"0\",\"feed_title\":\"\",\"feed_date\":\"\",\"feed_image_src\":\"\",\"rsslimit\":\"150\",\"rsslimitmax\":\"2500\",\"csv_import_frontend\":\"3\",\"csv_export_frontend\":\"2\",\"csvfullname\":\"0\",\"csv_export_step\":\"100\",\"newline_csv_export\":\"nl2br\",\"csv_custom_qs\":\"\",\"csv_frontend_selection\":\"0\",\"incfilters\":\"0\",\"csv_format\":\"0\",\"csv_which_elements\":\"selected\",\"show_in_csv\":\"\",\"csv_elements\":\"null\",\"csv_include_data\":\"1\",\"csv_include_raw_data\":\"1\",\"csv_include_calculations\":\"0\",\"csv_encoding\":\"\",\"search_use\":\"0\",\"search_title\":\"\",\"search_description\":\"\",\"search_date\":\"\",\"search_link_type\":\"details\",\"allow_view_details\":\"1\",\"allow_edit_details\":\"1\",\"allow_edit_details2\":\"\",\"allow_add\":\"1\",\"allow_delete\":\"2\",\"allow_delete2\":\"\",\"allow_drop\":\"3\",\"isview\":\"0\"}');

-- ----------------------------
-- Table structure for zwkgr_fabrik_log
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_log`;
CREATE TABLE `zwkgr_fabrik_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timedate_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` smallint(3) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `message_source` varchar(255) NOT NULL,
  `message_type` char(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_log
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_notification
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_notification`;
CREATE TABLE `zwkgr_fabrik_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) NOT NULL COMMENT 'listid.formid.rowid reference',
  `user_id` int(6) NOT NULL,
  `reason` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquereason` (`user_id`,`reason`(20),`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_notification
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_notification_event
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_notification_event`;
CREATE TABLE `zwkgr_fabrik_notification_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) NOT NULL COMMENT 'listid.formid.rowid reference',
  `event` varchar(255) NOT NULL,
  `user_id` int(6) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_notification_event
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_notification_event_sent
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_notification_event_sent`;
CREATE TABLE `zwkgr_fabrik_notification_event_sent` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `notification_event_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_notified` (`notification_event_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_notification_event_sent
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_packages
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_packages`;
CREATE TABLE `zwkgr_fabrik_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_ref` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `component_name` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(6) NOT NULL,
  `template` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_packages
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_ratings
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_ratings`;
CREATE TABLE `zwkgr_fabrik_ratings` (
  `user_id` varchar(255) NOT NULL,
  `listid` int(6) NOT NULL,
  `formid` int(6) NOT NULL,
  `row_id` int(6) NOT NULL,
  `rating` int(6) NOT NULL,
  `date_created` datetime NOT NULL,
  `element_id` int(6) NOT NULL,
  PRIMARY KEY (`user_id`,`listid`,`formid`,`row_id`,`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_thumbs
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_thumbs`;
CREATE TABLE `zwkgr_fabrik_thumbs` (
  `user_id` varchar(255) NOT NULL,
  `tableid` int(6) NOT NULL,
  `formid` int(6) NOT NULL,
  `row_id` int(6) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `element_id` int(6) NOT NULL,
  PRIMARY KEY (`user_id`,`tableid`,`formid`,`row_id`,`element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zwkgr_fabrik_thumbs
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_validations
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_validations`;
CREATE TABLE `zwkgr_fabrik_validations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(4) NOT NULL,
  `validation_plugin` varchar(100) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `client_side_validation` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_validations
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_fabrik_visualizations
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_fabrik_visualizations`;
CREATE TABLE `zwkgr_fabrik_visualizations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` int(1) NOT NULL,
  `access` int(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zwkgr_fabrik_visualizations
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_filters
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_filters`;
CREATE TABLE `zwkgr_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_filters
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links`;
CREATE TABLE `zwkgr_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms0
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms0`;
CREATE TABLE `zwkgr_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms0
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms1
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms1`;
CREATE TABLE `zwkgr_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms1
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms2
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms2`;
CREATE TABLE `zwkgr_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms2
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms3
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms3`;
CREATE TABLE `zwkgr_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms3
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms4
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms4`;
CREATE TABLE `zwkgr_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms4
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms5
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms5`;
CREATE TABLE `zwkgr_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms5
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms6
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms6`;
CREATE TABLE `zwkgr_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms6
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms7
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms7`;
CREATE TABLE `zwkgr_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms7
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms8
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms8`;
CREATE TABLE `zwkgr_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms8
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_terms9
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_terms9`;
CREATE TABLE `zwkgr_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_terms9
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termsa
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termsa`;
CREATE TABLE `zwkgr_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termsa
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termsb
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termsb`;
CREATE TABLE `zwkgr_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termsb
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termsc
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termsc`;
CREATE TABLE `zwkgr_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termsc
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termsd
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termsd`;
CREATE TABLE `zwkgr_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termsd
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termse
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termse`;
CREATE TABLE `zwkgr_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termse
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_links_termsf
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_links_termsf`;
CREATE TABLE `zwkgr_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_links_termsf
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_taxonomy`;
CREATE TABLE `zwkgr_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_taxonomy
-- ----------------------------
INSERT INTO `zwkgr_finder_taxonomy` VALUES ('1', '0', 'ROOT', '0', '0', '0');

-- ----------------------------
-- Table structure for zwkgr_finder_taxonomy_map
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_taxonomy_map`;
CREATE TABLE `zwkgr_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_taxonomy_map
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_terms
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_terms`;
CREATE TABLE `zwkgr_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_terms
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_terms_common
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_terms_common`;
CREATE TABLE `zwkgr_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_terms_common
-- ----------------------------
INSERT INTO `zwkgr_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('ani', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('noth', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('onli', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('veri', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('whi', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `zwkgr_finder_terms_common` VALUES ('yours', 'en');

-- ----------------------------
-- Table structure for zwkgr_finder_tokens
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_tokens`;
CREATE TABLE `zwkgr_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_tokens_aggregate
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_tokens_aggregate`;
CREATE TABLE `zwkgr_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_tokens_aggregate
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_finder_types
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_finder_types`;
CREATE TABLE `zwkgr_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_finder_types
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_languages
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_languages`;
CREATE TABLE `zwkgr_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_languages
-- ----------------------------
INSERT INTO `zwkgr_languages` VALUES ('1', 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', '1', '1', '1');

-- ----------------------------
-- Table structure for zwkgr_menu
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_menu`;
CREATE TABLE `zwkgr_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(191),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(191)),
  KEY `idx_path` (`path`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_menu
-- ----------------------------
INSERT INTO `zwkgr_menu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '63', '0', '*', '0');
INSERT INTO `zwkgr_menu` VALUES ('2', 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '0', '1', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('3', 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('4', 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', '0', '2', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('5', 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('6', 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '0', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('7', 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', '0', '1', '1', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('8', 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', '0', '7', '2', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('9', 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', '0', '7', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('10', 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', '0', '1', '1', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '22', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('11', 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', '0', '10', '2', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('13', 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '1', '1', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '23', '28', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('14', 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '13', '2', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('15', 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '0', '13', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '26', '27', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('16', 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', '0', '1', '1', '24', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '29', '30', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('17', 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', '0', '1', '1', '19', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '31', '32', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('18', 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', '0', '1', '1', '27', '0', '0000-00-00 00:00:00', '0', '0', 'class:finder', '0', '', '33', '34', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('19', 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', '1', '1', '1', '28', '0', '0000-00-00 00:00:00', '0', '0', 'class:joomlaupdate', '0', '', '35', '36', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('20', 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', '0', '1', '1', '29', '0', '0000-00-00 00:00:00', '0', '1', 'class:tags', '0', '', '37', '38', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('21', 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', '0', '1', '1', '32', '0', '0000-00-00 00:00:00', '0', '1', 'class:postinstall', '0', '', '39', '40', '0', '*', '1');
INSERT INTO `zwkgr_menu` VALUES ('101', 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', '1', '1', '1', '22', '0', '0000-00-00 00:00:00', '0', '1', '', '0', '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '41', '42', '1', '*', '0');
INSERT INTO `zwkgr_menu` VALUES ('102', 'main', 'com_fabrik', 'com-fabrik', '', 'com-fabrik', 'index.php?option=com_fabrik', 'component', '0', '1', '1', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/fabrik.png', '0', '{}', '43', '60', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('103', 'main', 'com_fabrik_lists', 'com-fabrik-lists', '', 'com-fabrik/com-fabrik-lists', 'index.php?option=com_fabrik&view=lists', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/lists.png', '0', '{}', '44', '45', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('104', 'main', 'com_fabrik_forms', 'com-fabrik-forms', '', 'com-fabrik/com-fabrik-forms', 'index.php?option=com_fabrik&view=forms', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/forms.png', '0', '{}', '46', '47', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('105', 'main', 'com_fabrik_groups', 'com-fabrik-groups', '', 'com-fabrik/com-fabrik-groups', 'index.php?option=com_fabrik&view=groups', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/groups.png', '0', '{}', '48', '49', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('106', 'main', 'com_fabrik_elements', 'com-fabrik-elements', '', 'com-fabrik/com-fabrik-elements', 'index.php?option=com_fabrik&view=elements', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/elements.png', '0', '{}', '50', '51', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('107', 'main', 'com_fabrik_visualizations', 'com-fabrik-visualizations', '', 'com-fabrik/com-fabrik-visualizations', 'index.php?option=com_fabrik&view=visualizations', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/visualizations.png', '0', '{}', '52', '53', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('108', 'main', 'com_fabrik_packages', 'com-fabrik-packages', '', 'com-fabrik/com-fabrik-packages', 'index.php?option=com_fabrik&view=packages', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/packages.png', '0', '{}', '54', '55', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('109', 'main', 'com_fabrik_connections', 'com-fabrik-connections', '', 'com-fabrik/com-fabrik-connections', 'index.php?option=com_fabrik&view=connections', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/connections.png', '0', '{}', '56', '57', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('110', 'main', 'com_fabrik_schedule', 'com-fabrik-schedule', '', 'com-fabrik/com-fabrik-schedule', 'index.php?option=com_fabrik&view=crons', 'component', '0', '102', '2', '10000', '0', '0000-00-00 00:00:00', '0', '1', '../administrator/components/com_fabrik/images/schedules.png', '0', '{}', '58', '59', '0', '', '1');
INSERT INTO `zwkgr_menu` VALUES ('111', 'mainmenu', 'test list', 'test-list', '', 'test-list', 'index.php?option=com_fabrik&view=list&listid=1', 'component', '1', '1', '1', '10000', '0', '0000-00-00 00:00:00', '0', '1', ' ', '0', '{\"addurl\":\"\",\"show-title\":\"1\",\"calculations\":\"0\",\"listlayout\":\"\",\"resetfilters\":\"0\",\"list_elements\":\"null\",\"prefilters\":\"null\",\"rows_per_page\":\"10\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '61', '62', '0', '*', '0');

-- ----------------------------
-- Table structure for zwkgr_menu_types
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_menu_types`;
CREATE TABLE `zwkgr_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_menu_types
-- ----------------------------
INSERT INTO `zwkgr_menu_types` VALUES ('1', 'mainmenu', 'Main Menu', 'The main menu for the site');

-- ----------------------------
-- Table structure for zwkgr_messages
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_messages`;
CREATE TABLE `zwkgr_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_messages
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_messages_cfg
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_messages_cfg`;
CREATE TABLE `zwkgr_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_modules
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_modules`;
CREATE TABLE `zwkgr_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_modules
-- ----------------------------
INSERT INTO `zwkgr_modules` VALUES ('1', '39', 'Main Menu', '', '', '1', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `zwkgr_modules` VALUES ('2', '40', 'Login', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('3', '41', 'Popular Articles', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('4', '42', 'Recently Added Articles', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('8', '43', 'Toolbar', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('9', '44', 'Quick Icons', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('10', '45', 'Logged-in Users', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('12', '46', 'Admin Menu', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('13', '47', 'Admin Submenu', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('14', '48', 'User Status', '', '', '2', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('15', '49', 'Title', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('16', '50', 'Login Form', '', '', '7', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `zwkgr_modules` VALUES ('17', '51', 'Breadcrumbs', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `zwkgr_modules` VALUES ('79', '52', 'Multilanguage status', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_multilangstatus', '3', '1', '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `zwkgr_modules` VALUES ('86', '53', 'Joomla Version', '', '', '1', 'footer', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_version', '3', '1', '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');

-- ----------------------------
-- Table structure for zwkgr_modules_menu
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_modules_menu`;
CREATE TABLE `zwkgr_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_modules_menu
-- ----------------------------
INSERT INTO `zwkgr_modules_menu` VALUES ('1', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('2', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('3', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('4', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('6', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('7', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('8', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('9', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('10', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('12', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('13', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('14', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('15', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('16', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('17', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('79', '0');
INSERT INTO `zwkgr_modules_menu` VALUES ('86', '0');

-- ----------------------------
-- Table structure for zwkgr_newsfeeds
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_newsfeeds`;
CREATE TABLE `zwkgr_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_overrider
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_overrider`;
CREATE TABLE `zwkgr_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_overrider
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_postinstall_messages
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_postinstall_messages`;
CREATE TABLE `zwkgr_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_postinstall_messages
-- ----------------------------
INSERT INTO `zwkgr_postinstall_messages` VALUES ('1', '700', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', '1', 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', '1');
INSERT INTO `zwkgr_postinstall_messages` VALUES ('2', '700', 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', '1', 'message', '', '', '', '', '3.2.0', '1');
INSERT INTO `zwkgr_postinstall_messages` VALUES ('3', '700', 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', '1');

-- ----------------------------
-- Table structure for zwkgr_redirect_links
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_redirect_links`;
CREATE TABLE `zwkgr_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`(191)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_redirect_links
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_schemas
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_schemas`;
CREATE TABLE `zwkgr_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_schemas
-- ----------------------------
INSERT INTO `zwkgr_schemas` VALUES ('700', '3.5.0-2015-11-05');
INSERT INTO `zwkgr_schemas` VALUES ('10000', '3.4');

-- ----------------------------
-- Table structure for zwkgr_session
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_session`;
CREATE TABLE `zwkgr_session` (
  `session_id` varchar(191) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_session
-- ----------------------------
INSERT INTO `zwkgr_session` VALUES ('330df26ee040af274b0aa82739fd8f66', '1', '0', '1455549010', 'joomla|s:2668:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NTU0OTAwMTtzOjQ6Imxhc3QiO2k6MTQ1NTU0OTAwNztzOjM6Im5vdyI7aToxNDU1NTQ5MDA5O31zOjU6InRva2VuIjtzOjMyOiJXcGpTcTZGaWZNUWhqOG0za2RBcjZoUFc5NzI2WXBsZyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6ImVuLUdCIjt9czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiNjM0IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6NToiZW1haWwiO3M6MTg6InJvYkBwb2xsZW4tOC5jby51ayI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJHdtWTdESFROM2hJYThEby8uSXNrbXVuekRNeDg0NTNDVkVKemlBb3hiZWJEQzJ3VzNDNnVlIjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO3M6MToiMCI7czo5OiJzZW5kRW1haWwiO3M6MToiMSI7czoxMjoicmVnaXN0ZXJEYXRlIjtzOjE5OiIyMDE1LTExLTA5IDA4OjUyOjU1IjtzOjEzOiJsYXN0dmlzaXREYXRlIjtzOjE5OiIyMDE2LTAyLTE1IDE1OjEwOjAxIjtzOjEwOiJhY3RpdmF0aW9uIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjkyOiJ7ImFkbWluX3N0eWxlIjoiIiwiYWRtaW5fbGFuZ3VhZ2UiOiIiLCJsYW5ndWFnZSI6IiIsImVkaXRvciI6IiIsImhlbHBzaXRlIjoiIiwidGltZXpvbmUiOiIifSI7czo2OiJncm91cHMiO2E6MTp7aTo4O3M6MToiOCI7fXM6NToiZ3Vlc3QiO2k6MDtzOjEzOiJsYXN0UmVzZXRUaW1lIjtzOjE5OiIwMDAwLTAwLTAwIDAwOjAwOjAwIjtzOjEwOiJyZXNldENvdW50IjtzOjE6IjAiO3M6MTI6InJlcXVpcmVSZXNldCI7czoxOiIwIjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Njp7czoxMToiYWRtaW5fc3R5bGUiO3M6MDoiIjtzOjE0OiJhZG1pbl9sYW5ndWFnZSI7czowOiIiO3M6ODoibGFuZ3VhZ2UiO3M6MDoiIjtzOjY6ImVkaXRvciI7czowOiIiO3M6ODoiaGVscHNpdGUiO3M6MDoiIjtzOjg6InRpbWV6b25lIjtzOjA6IiI7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjg7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjU6e2k6MDtpOjE7aToxO2k6MTtpOjI7aToyO2k6MztpOjM7aTo0O2k6Njt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO3M6Njoib3RwS2V5IjtzOjA6IiI7czo0OiJvdGVwIjtzOjA6IiI7fXM6NjoiZmFicmlrIjtPOjg6InN0ZENsYXNzIjoxOntzOjI6ImpzIjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNjcmlwdHMiO047czo0OiJoZWFkIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InNjcmlwdHMiO047fXM6NjoiY29uZmlnIjtOO3M6NDoic2hpbSI7TjtzOjg6ImpsYXlvdXRzIjtOO319fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', '634', 'admin');
INSERT INTO `zwkgr_session` VALUES ('620554495df97851bbc02ac49bb18564', '0', '1', '1455548208', 'joomla|s:5136:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo2OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NTU0NzgwOTtzOjQ6Imxhc3QiO2k6MTQ1NTU0ODIwMjtzOjM6Im5vdyI7aToxNDU1NTQ4MjA2O31zOjU6InRva2VuIjtzOjMyOiJqM1hnQkhRQmZDWmtIbklCdDZWWkR5eEM1YVd3WUFDcSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjb21fZmFicmlrIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InBhY2thZ2UiO3M6NjoiZmFicmlrIjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI2OntzOjk6IgAqAGlzUm9vdCI7YjowO3M6MjoiaWQiO2k6MDtzOjQ6Im5hbWUiO047czo4OiJ1c2VybmFtZSI7TjtzOjU6ImVtYWlsIjtOO3M6ODoicGFzc3dvcmQiO047czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtOO3M6OToic2VuZEVtYWlsIjtpOjA7czoxMjoicmVnaXN0ZXJEYXRlIjtOO3M6MTM6Imxhc3R2aXNpdERhdGUiO047czoxMDoiYWN0aXZhdGlvbiI7TjtzOjY6InBhcmFtcyI7TjtzOjY6Imdyb3VwcyI7YToxOntpOjA7czoxOiI5Ijt9czo1OiJndWVzdCI7aToxO3M6MTM6Imxhc3RSZXNldFRpbWUiO047czoxMDoicmVzZXRDb3VudCI7TjtzOjEyOiJyZXF1aXJlUmVzZXQiO047czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO2E6Mjp7aTowO2k6MTtpOjE7aTo5O31zOjE0OiIAKgBfYXV0aExldmVscyI7YTozOntpOjA7aToxO2k6MTtpOjE7aToyO2k6NTt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO31zOjY6ImZhYnJpayI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJqcyI7Tzo4OiJzdGRDbGFzcyI6NTp7czo3OiJzY3JpcHRzIjtOO3M6NDoiaGVhZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJzY3JpcHRzIjtOO31zOjY6ImNvbmZpZyI7TjtzOjQ6InNoaW0iO047czo4OiJqbGF5b3V0cyI7Tjt9czoxNDoiY2xlYXJDYW5vbmljYWwiO047fXM6MTA6ImNvbV9mYWJyaWsiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxOiIxIjtPOjg6InN0ZENsYXNzIjo0OntzOjQ6ImRhdGEiO2E6MjY6e3M6OToidGVzdF9fX2lkIjtzOjE6IjIiO3M6MTM6InRlc3RfX19pZF9yYXciO3M6MToiMiI7czoxNjoidGVzdF9fX2RhdGVfdGltZSI7czoxOToiMjAxNi0wMi0xNSAxNDo1NDowNSI7czoyMDoidGVzdF9fX2RhdGVfdGltZV9yYXciO3M6MTk6IjIwMTYtMDItMTUgMTQ6NTQ6MDUiO3M6MTM6InRlc3RfX19hY2Nlc3MiO3M6MToiMCI7czoxNzoidGVzdF9fX2FjY2Vzc19yYXciO3M6MToiMCI7czoxNjoidGVzdF9fX2F0dGVuZGluZyI7czoxOiIwIjtzOjIwOiJ0ZXN0X19fYXR0ZW5kaW5nX3JhdyI7czoxOiIwIjtzOjE1OiJ0ZXN0X19fYmlydGhkYXkiO3M6MTA6IjAwMDAtMDAtMDAiO3M6MTk6InRlc3RfX19iaXJ0aGRheV9yYXciO3M6MTA6IjAwMDAtMDAtMDAiO3M6MTM6InRlc3RfX19idXR0b24iO3M6MDoiIjtzOjE3OiJ0ZXN0X19fYnV0dG9uX3JhdyI7czowOiIiO3M6MTE6InRlc3RfX19jYWxjIjtzOjI6IjE4IjtzOjE1OiJ0ZXN0X19fY2FsY19yYXciO3M6MjoiMTgiO3M6MTU6InRlc3RfX19jaGVja2JveCI7czo0OiJbIiJdIjtzOjE5OiJ0ZXN0X19fY2hlY2tib3hfcmF3IjtzOjQ6IlsiIl0iO3M6NDoic2x1ZyI7czoxOiIyIjtzOjg6Il9fcGtfdmFsIjtzOjE6IjIiO3M6MzI6IjViNTUzYmE2Y2ZkMGEzZTZhNWYyZGEzZDNlYTI2MTJhIjtzOjMyOiI2MjA1NTQ0OTVkZjk3ODUxYmJjMDJhYzQ5YmIxODU2NCI7czozMjoiNDk4NjA5ZTZmYzg5OThhNjhiOWE1M2YyYjg2OTFhMTUiO3M6MzI6ImZjOGZmZjYyODlhMDFhYzVlMzBjYTRmNjEyZTVhMzUxIjtzOjY6Ikl0ZW1pZCI7czozOiIxMTEiO3M6Njoib3B0aW9uIjtzOjEwOiJjb21fZmFicmlrIjtzOjQ6InZpZXciO3M6NDoiZm9ybSI7czo2OiJmb3JtaWQiO3M6MToiMSI7czo1OiJyb3dpZCI7czoxOiIyIjtzOjY6ImZvcm1hdCI7czo0OiJodG1sIjt9czo2OiJlcnJvcnMiO047czo3OiJzZXNzaW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjI6Im9uIjtOO31zOjg6InJlZGlyZWN0IjtPOjg6InN0ZENsYXNzIjoyOntzOjM6InVybCI7YTowOnt9czozOiJtc2ciO2E6MTp7aTowO3M6MjA6IlJlY29yZCBhZGRlZC91cGRhdGVkIjt9fX1zOjQ6ImRhdGEiO2E6MzM6e3M6OToidGVzdF9fX2lkIjtzOjA6IiI7czoxNjoidGVzdF9fX2RhdGVfdGltZSI7czoxOToiMjAxNi0wMi0xNSAxNDo1NDowNSI7czoxMzoidGVzdF9fX2FjY2VzcyI7czowOiIiO3M6MTU6InRlc3RfX19iaXJ0aGRheSI7YTozOntpOjA7czowOiIiO2k6MTtzOjA6IiI7aToyO3M6MDoiIjt9czo2OiJsaXN0aWQiO3M6MToiMSI7czo3OiJsaXN0cmVmIjtzOjE6IjEiO3M6NToicm93aWQiO3M6MDoiIjtzOjY6Ikl0ZW1pZCI7czozOiIxMTEiO3M6Njoib3B0aW9uIjtzOjEwOiJjb21fZmFicmlrIjtzOjQ6InRhc2siO3M6MTI6ImZvcm0ucHJvY2VzcyI7czo4OiJpc01hbWJvdCI7czowOiIiO3M6NjoiZm9ybWlkIjtzOjE6IjEiO3M6MTI6InJldHVybnRvZm9ybSI7czoxOiIwIjtzOjE1OiJmYWJyaWtfcmVmZXJyZXIiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9pbmRleC5waHAvdGVzdC1saXN0IjtzOjExOiJmYWJyaWtfYWpheCI7czoxOiIwIjtzOjc6InBhY2thZ2UiO3M6NjoiZmFicmlrIjtzOjk6InBhY2thZ2VJZCI7czowOiIiO3M6MzI6IjZlYmNhNWEyZGQ5MmUxZjk2ODQ0MGRmNDU2NTQyZWY3IjtzOjE6IjEiO3M6NjoiZm9ybWF0IjtzOjQ6Imh0bWwiO3M6MTk6ImZhYnJpa19yZXBlYXRfZ3JvdXAiO2E6MTp7aToxO3M6MToiMSI7fXM6NjoiU3VibWl0IjtzOjA6IiI7czoxMzoidGVzdF9fX2lkX3JhdyI7czowOiIiO3M6MjA6InRlc3RfX19kYXRlX3RpbWVfcmF3IjtzOjE5OiIyMDE2LTAyLTE1IDE0OjU0OjA1IjtzOjE3OiJ0ZXN0X19fYWNjZXNzX3JhdyI7czowOiIiO3M6MjA6InRlc3RfX19hdHRlbmRpbmdfcmF3IjtzOjA6IiI7czoxOToidGVzdF9fX2JpcnRoZGF5X3JhdyI7YTozOntpOjA7czowOiIiO2k6MTtzOjA6IiI7aToyO3M6MDoiIjt9czoxNzoidGVzdF9fX2J1dHRvbl9yYXciO3M6MDoiIjtzOjE1OiJ0ZXN0X19fY2FsY19yYXciO3M6MDoiIjtzOjE5OiJ0ZXN0X19fY2hlY2tib3hfcmF3IjtzOjA6IiI7czo4OiJfX3BrX3ZhbCI7czowOiIiO3M6MzI6IjViNTUzYmE2Y2ZkMGEzZTZhNWYyZGEzZDNlYTI2MTJhIjtzOjMyOiI2MjA1NTQ0OTVkZjk3ODUxYmJjMDJhYzQ5YmIxODU2NCI7czozMjoiNDk4NjA5ZTZmYzg5OThhNjhiOWE1M2YyYjg2OTFhMTUiO3M6MzI6ImZjOGZmZjYyODlhMDFhYzVlMzBjYTRmNjEyZTVhMzUxIjtzOjQ6InZpZXciO3M6NDoiZm9ybSI7fX19czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', '0', '');

-- ----------------------------
-- Table structure for zwkgr_tags
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_tags`;
CREATE TABLE `zwkgr_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(191)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_tags
-- ----------------------------
INSERT INTO `zwkgr_tags` VALUES ('1', '0', '0', '1', '0', '', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '', '42', '2011-01-01 00:00:01', '', '0', '0000-00-00 00:00:00', '', '', '0', '*', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for zwkgr_template_styles
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_template_styles`;
CREATE TABLE `zwkgr_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_template_styles
-- ----------------------------
INSERT INTO `zwkgr_template_styles` VALUES ('4', 'beez3', '0', '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `zwkgr_template_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `zwkgr_template_styles` VALUES ('7', 'protostar', '0', '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `zwkgr_template_styles` VALUES ('8', 'isis', '1', '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- ----------------------------
-- Table structure for zwkgr_ucm_base
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_ucm_base`;
CREATE TABLE `zwkgr_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_ucm_base
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_ucm_content
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_ucm_content`;
CREATE TABLE `zwkgr_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(191)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(191)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(191)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Records of zwkgr_ucm_content
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_ucm_history
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_ucm_history`;
CREATE TABLE `zwkgr_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_ucm_history
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_update_sites
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_update_sites`;
CREATE TABLE `zwkgr_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='Update Sites';

-- ----------------------------
-- Records of zwkgr_update_sites
-- ----------------------------
INSERT INTO `zwkgr_update_sites` VALUES ('1', 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', '1', '1455549009', '');
INSERT INTO `zwkgr_update_sites` VALUES ('2', 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', '1', '1455549009', '');
INSERT INTO `zwkgr_update_sites` VALUES ('3', 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', '1', '0', '');
INSERT INTO `zwkgr_update_sites` VALUES ('4', 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', '1', '0', '');

-- ----------------------------
-- Table structure for zwkgr_update_sites_extensions
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_update_sites_extensions`;
CREATE TABLE `zwkgr_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of zwkgr_update_sites_extensions
-- ----------------------------
INSERT INTO `zwkgr_update_sites_extensions` VALUES ('1', '700');
INSERT INTO `zwkgr_update_sites_extensions` VALUES ('2', '700');
INSERT INTO `zwkgr_update_sites_extensions` VALUES ('3', '600');
INSERT INTO `zwkgr_update_sites_extensions` VALUES ('4', '28');

-- ----------------------------
-- Table structure for zwkgr_updates
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_updates`;
CREATE TABLE `zwkgr_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Available Updates';

-- ----------------------------
-- Records of zwkgr_updates
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_user_keys
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_user_keys`;
CREATE TABLE `zwkgr_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_user_keys
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_user_notes
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_user_notes`;
CREATE TABLE `zwkgr_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_user_profiles`;
CREATE TABLE `zwkgr_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Simple user profile storage table';

-- ----------------------------
-- Records of zwkgr_user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for zwkgr_user_usergroup_map
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_user_usergroup_map`;
CREATE TABLE `zwkgr_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_user_usergroup_map
-- ----------------------------
INSERT INTO `zwkgr_user_usergroup_map` VALUES ('634', '8');

-- ----------------------------
-- Table structure for zwkgr_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_usergroups`;
CREATE TABLE `zwkgr_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_usergroups
-- ----------------------------
INSERT INTO `zwkgr_usergroups` VALUES ('1', '0', '1', '18', 'Public');
INSERT INTO `zwkgr_usergroups` VALUES ('2', '1', '8', '15', 'Registered');
INSERT INTO `zwkgr_usergroups` VALUES ('3', '2', '9', '14', 'Author');
INSERT INTO `zwkgr_usergroups` VALUES ('4', '3', '10', '13', 'Editor');
INSERT INTO `zwkgr_usergroups` VALUES ('5', '4', '11', '12', 'Publisher');
INSERT INTO `zwkgr_usergroups` VALUES ('6', '1', '4', '7', 'Manager');
INSERT INTO `zwkgr_usergroups` VALUES ('7', '6', '5', '6', 'Administrator');
INSERT INTO `zwkgr_usergroups` VALUES ('8', '1', '16', '17', 'Super Users');
INSERT INTO `zwkgr_usergroups` VALUES ('9', '1', '2', '3', 'Guest');

-- ----------------------------
-- Table structure for zwkgr_users
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_users`;
CREATE TABLE `zwkgr_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(191)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_users
-- ----------------------------
INSERT INTO `zwkgr_users` VALUES ('634', 'Super User', 'admin', 'rob@pollen-8.co.uk', '$2y$10$wmY7DHTN3hIa8Do/.IskmunzDMx8453CVEJziAoxbebDC2wW3C6ue', '0', '1', '2015-11-09 08:52:55', '2016-02-15 15:10:05', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', '0', '', '', '0');

-- ----------------------------
-- Table structure for zwkgr_viewlevels
-- ----------------------------
DROP TABLE IF EXISTS `zwkgr_viewlevels`;
CREATE TABLE `zwkgr_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zwkgr_viewlevels
-- ----------------------------
INSERT INTO `zwkgr_viewlevels` VALUES ('1', 'Public', '0', '[1]');
INSERT INTO `zwkgr_viewlevels` VALUES ('2', 'Registered', '2', '[6,2,8]');
INSERT INTO `zwkgr_viewlevels` VALUES ('3', 'Special', '3', '[6,3,8]');
INSERT INTO `zwkgr_viewlevels` VALUES ('5', 'Guest', '1', '[9]');
INSERT INTO `zwkgr_viewlevels` VALUES ('6', 'Super Users', '4', '[8]');
