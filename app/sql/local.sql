-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `w9th_aiowps_events`
--

DROP TABLE IF EXISTS `w9th_aiowps_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_events`
--

LOCK TABLES `w9th_aiowps_events` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_aiowps_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_aiowps_failed_logins`
--

DROP TABLE IF EXISTS `w9th_aiowps_failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_failed_logins`
--

LOCK TABLES `w9th_aiowps_failed_logins` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_failed_logins` DISABLE KEYS */;
INSERT INTO `w9th_aiowps_failed_logins` VALUES (1,1,'admin','2021-11-26 16:10:15','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (2,1,'admin','2021-11-26 16:10:19','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (3,1,'admin','2021-11-26 16:10:24','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (4,1,'admin','2021-11-26 16:11:16','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (5,1,'admin','2021-11-26 16:11:21','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (6,1,'admin','2021-11-26 16:11:25','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (7,1,'admin','2021-11-26 16:11:49','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (8,1,'admin','2021-11-26 16:13:10','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (9,1,'admin','2021-11-26 16:13:18','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (10,1,'admin','2021-11-26 16:13:22','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (11,1,'admin','2021-11-26 16:13:25','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (12,1,'admin','2021-11-26 16:13:43','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (13,1,'admin','2021-11-26 16:15:45','127.0.0.1');
INSERT INTO `w9th_aiowps_failed_logins` VALUES (14,1,'admin','2021-11-26 16:15:50','127.0.0.1');
/*!40000 ALTER TABLE `w9th_aiowps_failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_aiowps_global_meta`
--

DROP TABLE IF EXISTS `w9th_aiowps_global_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_global_meta`
--

LOCK TABLES `w9th_aiowps_global_meta` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_global_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_aiowps_global_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_aiowps_login_activity`
--

DROP TABLE IF EXISTS `w9th_aiowps_login_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_login_activity`
--

LOCK TABLES `w9th_aiowps_login_activity` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_login_activity` DISABLE KEYS */;
INSERT INTO `w9th_aiowps_login_activity` VALUES (1,1,'admin','2021-11-08 01:48:07','1000-10-10 10:00:00','172.19.0.24','','');
INSERT INTO `w9th_aiowps_login_activity` VALUES (2,1,'admin','2021-11-08 02:49:31','1000-10-10 10:00:00','172.19.0.24','','');
INSERT INTO `w9th_aiowps_login_activity` VALUES (3,1,'admin','2021-11-08 03:33:35','1000-10-10 10:00:00','172.19.0.24','','');
INSERT INTO `w9th_aiowps_login_activity` VALUES (4,1,'admin','2021-11-26 16:16:43','1000-10-10 10:00:00','127.0.0.1','','');
/*!40000 ALTER TABLE `w9th_aiowps_login_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_aiowps_login_lockdown`
--

DROP TABLE IF EXISTS `w9th_aiowps_login_lockdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_login_lockdown`
--

LOCK TABLES `w9th_aiowps_login_lockdown` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_login_lockdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_aiowps_login_lockdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_aiowps_permanent_block`
--

DROP TABLE IF EXISTS `w9th_aiowps_permanent_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_aiowps_permanent_block`
--

LOCK TABLES `w9th_aiowps_permanent_block` WRITE;
/*!40000 ALTER TABLE `w9th_aiowps_permanent_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_aiowps_permanent_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_commentmeta`
--

DROP TABLE IF EXISTS `w9th_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_commentmeta`
--

LOCK TABLES `w9th_commentmeta` WRITE;
/*!40000 ALTER TABLE `w9th_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_comments`
--

DROP TABLE IF EXISTS `w9th_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_comments`
--

LOCK TABLES `w9th_comments` WRITE;
/*!40000 ALTER TABLE `w9th_comments` DISABLE KEYS */;
INSERT INTO `w9th_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-11-05 09:53:02','2021-11-05 09:53:02','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `w9th_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_links`
--

DROP TABLE IF EXISTS `w9th_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_links`
--

LOCK TABLES `w9th_links` WRITE;
/*!40000 ALTER TABLE `w9th_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_mail_bank`
--

DROP TABLE IF EXISTS `w9th_mail_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_mail_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_mail_bank`
--

LOCK TABLES `w9th_mail_bank` WRITE;
/*!40000 ALTER TABLE `w9th_mail_bank` DISABLE KEYS */;
INSERT INTO `w9th_mail_bank` VALUES (1,'email_configuration',0);
INSERT INTO `w9th_mail_bank` VALUES (2,'email_logs',0);
INSERT INTO `w9th_mail_bank` VALUES (3,'settings',0);
INSERT INTO `w9th_mail_bank` VALUES (4,'collation_type',0);
INSERT INTO `w9th_mail_bank` VALUES (5,'notifications',0);
INSERT INTO `w9th_mail_bank` VALUES (6,'roles_and_capabilities',0);
/*!40000 ALTER TABLE `w9th_mail_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_mail_bank_logs`
--

DROP TABLE IF EXISTS `w9th_mail_bank_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_mail_bank_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_to` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bcc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subject` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `sender_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sender_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debug_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debugging_output` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `timestamp` int(20) DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_mail_bank_logs`
--

LOCK TABLES `w9th_mail_bank_logs` WRITE;
/*!40000 ALTER TABLE `w9th_mail_bank_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_mail_bank_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_mail_bank_meta`
--

DROP TABLE IF EXISTS `w9th_mail_bank_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_mail_bank_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_id` int(11) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_mail_bank_meta`
--

LOCK TABLES `w9th_mail_bank_meta` WRITE;
/*!40000 ALTER TABLE `w9th_mail_bank_meta` DISABLE KEYS */;
INSERT INTO `w9th_mail_bank_meta` VALUES (1,1,'email_configuration','a:22:{s:13:\"email_address\";s:19:\"vu.vo@9thwonder.com\";s:8:\"reply_to\";s:0:\"\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:7:\"headers\";s:0:\"\";s:11:\"mailer_type\";s:4:\"smtp\";s:11:\"sender_name\";s:10:\"WP Starter\";s:8:\"hostname\";s:0:\"\";s:4:\"port\";s:3:\"587\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"redirect_uri\";s:0:\"\";s:12:\"sender_email\";s:19:\"vu.vo@9thwonder.com\";s:9:\"auth_type\";s:5:\"login\";s:8:\"username\";s:19:\"vu.vo@9thwonder.com\";s:8:\"password\";s:0:\"\";s:8:\"enc_type\";s:3:\"tls\";s:16:\"sendgrid_api_key\";s:0:\"\";s:15:\"mailgun_api_key\";s:0:\"\";s:19:\"mailgun_domain_name\";s:0:\"\";s:24:\"from_email_configuration\";s:8:\"override\";s:25:\"sender_name_configuration\";s:8:\"override\";}');
INSERT INTO `w9th_mail_bank_meta` VALUES (2,3,'settings','a:7:{s:23:\"automatic_plugin_update\";s:7:\"disable\";s:14:\"fetch_settings\";s:15:\"individual_site\";s:10:\"debug_mode\";s:6:\"enable\";s:26:\"remove_tables_at_uninstall\";s:7:\"disable\";s:18:\"monitor_email_logs\";s:6:\"enable\";s:15:\"auto_clear_logs\";s:7:\"disable\";s:17:\"delete_logs_after\";s:4:\"1day\";}');
INSERT INTO `w9th_mail_bank_meta` VALUES (3,5,'notifications','a:6:{s:12:\"notification\";s:7:\"disable\";s:20:\"notification_service\";s:5:\"email\";s:26:\"notification_email_address\";s:19:\"vu.vo@9thwonder.com\";s:17:\"pushover_user_key\";s:0:\"\";s:18:\"pushover_app_token\";s:0:\"\";s:14:\"slack_web_hook\";s:0:\"\";}');
INSERT INTO `w9th_mail_bank_meta` VALUES (4,6,'roles_and_capabilities','a:10:{s:22:\"roles_and_capabilities\";s:11:\"1,1,1,0,0,0\";s:27:\"show_mail_bank_top_bar_menu\";s:6:\"enable\";s:30:\"others_full_control_capability\";s:1:\"0\";s:24:\"administrator_privileges\";s:19:\"1,1,1,1,1,1,1,1,1,1\";s:17:\"author_privileges\";s:19:\"0,0,1,0,0,0,0,0,0,0\";s:17:\"editor_privileges\";s:19:\"0,0,1,0,0,0,1,0,0,0\";s:22:\"contributor_privileges\";s:19:\"0,0,0,0,0,0,1,0,0,0\";s:21:\"subscriber_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:22:\"other_roles_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:12:\"capabilities\";a:7:{i:0;s:14:\"manage_options\";i:1;s:12:\"edit_plugins\";i:2;s:10:\"edit_posts\";i:3;s:13:\"publish_posts\";i:4;s:13:\"publish_pages\";i:5;s:10:\"edit_pages\";i:6;s:4:\"read\";}}');
/*!40000 ALTER TABLE `w9th_mail_bank_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_options`
--

DROP TABLE IF EXISTS `w9th_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_options`
--

LOCK TABLES `w9th_options` WRITE;
/*!40000 ALTER TABLE `w9th_options` DISABLE KEYS */;
INSERT INTO `w9th_options` VALUES (1,'siteurl','https://sagethem.vm','yes');
INSERT INTO `w9th_options` VALUES (2,'home','https://sagethem.vm','yes');
INSERT INTO `w9th_options` VALUES (3,'blogname','WP Starter','yes');
INSERT INTO `w9th_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `w9th_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `w9th_options` VALUES (6,'admin_email','vu.vo@9thwonder.com','yes');
INSERT INTO `w9th_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `w9th_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `w9th_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `w9th_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `w9th_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `w9th_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `w9th_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `w9th_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `w9th_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `w9th_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `w9th_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `w9th_options` VALUES (18,'default_category','1','yes');
INSERT INTO `w9th_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `w9th_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `w9th_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `w9th_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `w9th_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `w9th_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `w9th_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `w9th_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `w9th_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `w9th_options` VALUES (28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `w9th_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `w9th_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `w9th_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `w9th_options` VALUES (33,'active_plugins','a:18:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:19:\"acf-cf7/acf-cf7.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:44:\"advanced-custom-fields-row-field/acf-row.php\";i:4;s:49:\"advanced-tinymce-configuration/adv-mce-config.php\";i:5;s:19:\"akismet/akismet.php\";i:6;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:7;s:33:\"classic-editor/classic-editor.php\";i:8;s:36:\"contact-form-7/wp-contact-form-7.php\";i:9;s:49:\"duplicate-wp-page-post/duplicate-wp-page-post.php\";i:10;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";i:11;s:27:\"redirection/redirection.php\";i:12;s:27:\"svg-support/svg-support.php\";i:13;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:14;s:61:\"visual-editor-custom-buttons/visual-editor-custom-buttons.php\";i:15;s:24:\"wordpress-seo/wp-seo.php\";i:16;s:29:\"wp-mail-bank/wp-mail-bank.php\";i:17;s:27:\"wpchecklist/wpchecklist.php\";}','yes');
INSERT INTO `w9th_options` VALUES (34,'category_base','','yes');
INSERT INTO `w9th_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `w9th_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `w9th_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `w9th_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `w9th_options` VALUES (39,'recently_edited','a:2:{i:0;s:62:\"/var/www/html/wp-content/themes/sage-theme/resources/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `w9th_options` VALUES (40,'template','sage-theme/resources','yes');
INSERT INTO `w9th_options` VALUES (41,'stylesheet','sage-theme/resources','yes');
INSERT INTO `w9th_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `w9th_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `w9th_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `w9th_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `w9th_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `w9th_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `w9th_options` VALUES (48,'upload_path','','yes');
INSERT INTO `w9th_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `w9th_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `w9th_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `w9th_options` VALUES (52,'tag_base','','yes');
INSERT INTO `w9th_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `w9th_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `w9th_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `w9th_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `w9th_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `w9th_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `w9th_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `w9th_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `w9th_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `w9th_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `w9th_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `w9th_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `w9th_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `w9th_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `w9th_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `w9th_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `w9th_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `w9th_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `w9th_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `w9th_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `w9th_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `w9th_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `w9th_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `w9th_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (79,'uninstall_plugins','a:2:{s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:15:\"hicpo_uninstall\";s:27:\"redirection/redirection.php\";a:2:{i:0;s:17:\"Redirection_Admin\";i:1;s:16:\"plugin_uninstall\";}}','no');
INSERT INTO `w9th_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `w9th_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `w9th_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `w9th_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `w9th_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `w9th_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `w9th_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `w9th_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `w9th_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `w9th_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `w9th_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `w9th_options` VALUES (91,'admin_email_lifespan','1651657982','yes');
INSERT INTO `w9th_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `w9th_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `w9th_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `w9th_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `w9th_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `w9th_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `w9th_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `w9th_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `w9th_options` VALUES (100,'w9th_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `w9th_options` VALUES (101,'fresh_site','1','yes');
INSERT INTO `w9th_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:14:\"sidebar-footer\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `w9th_options` VALUES (104,'cron','a:12:{i:1639662783;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639662872;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639691583;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639705659;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639705682;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639734783;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639734794;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639734796;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639734872;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639734873;a:2:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wpseo_onpage_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1639821183;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `w9th_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (114,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (115,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (116,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (118,'recovery_keys','a:0:{}','yes');
INSERT INTO `w9th_options` VALUES (119,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636106135;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `w9th_options` VALUES (120,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `w9th_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1639662263;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `w9th_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639662285;s:7:\"checked\";a:1:{s:20:\"sage-theme/resources\";s:5:\"9.0.9\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `w9th_options` VALUES (145,'can_compress_scripts','1','no');
INSERT INTO `w9th_options` VALUES (146,'recently_activated','a:0:{}','yes');
INSERT INTO `w9th_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `w9th_options` VALUES (151,'aiowpsec_db_version','1.9','yes');
INSERT INTO `w9th_options` VALUES (152,'aio_wp_security_configs','a:92:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:19:\"vu.vo@9thwonder.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"kd9j1lathjkebx28m9wk\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"808qvuzurtd9nhck06ti\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:19:\"vu.vo@9thwonder.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:27:\"aiowps_max_file_upload_size\";s:2:\"10\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:19:\"vu.vo@9thwonder.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";}','yes');
INSERT INTO `w9th_options` VALUES (153,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1636106072;s:7:\"version\";s:3:\"5.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `w9th_options` VALUES (154,'dpp_wpp_page_options','a:5:{s:15:\"dpp_post_status\";s:5:\"draft\";s:17:\"dpp_post_redirect\";s:7:\"to_list\";s:15:\"dpp_post_suffix\";s:0:\"\";s:14:\"dpp_posteditor\";s:7:\"classic\";s:19:\"dpp_post_link_title\";s:0:\"\";}','yes');
INSERT INTO `w9th_options` VALUES (155,'hicpo_ver','3.1.3','yes');
INSERT INTO `w9th_options` VALUES (156,'mb_admin_notice','a:1:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:10:\"11/12/2021\";s:3:\"int\";i:7;s:9:\"dismissed\";i:0;}}','yes');
INSERT INTO `w9th_options` VALUES (157,'mail_bank_update_database','mail_bank_update_database','yes');
INSERT INTO `w9th_options` VALUES (158,'mail-bank-version-number','3.0.6','yes');
INSERT INTO `w9th_options` VALUES (160,'redirection_options','a:31:{s:7:\"support\";b:0;s:5:\"token\";s:32:\"a6f09fab6bd19e239df9c5978e4edf8d\";s:12:\"monitor_post\";i:0;s:13:\"monitor_types\";a:0:{}s:19:\"associated_redirect\";s:0:\"\";s:11:\"auto_target\";s:0:\"\";s:15:\"expire_redirect\";i:7;s:10:\"expire_404\";i:7;s:12:\"log_external\";b:0;s:10:\"log_header\";b:0;s:10:\"track_hits\";b:1;s:7:\"modules\";a:0:{}s:10:\"newsletter\";b:0;s:14:\"redirect_cache\";i:1;s:10:\"ip_logging\";i:1;s:13:\"last_group_id\";i:0;s:8:\"rest_api\";i:0;s:5:\"https\";b:0;s:7:\"headers\";a:0:{}s:8:\"database\";s:0:\"\";s:8:\"relocate\";s:0:\"\";s:16:\"preferred_domain\";s:0:\"\";s:7:\"aliases\";a:0:{}s:10:\"permalinks\";a:0:{}s:9:\"cache_key\";i:0;s:13:\"plugin_update\";s:6:\"prompt\";s:13:\"update_notice\";i:0;s:10:\"flag_query\";s:5:\"exact\";s:9:\"flag_case\";b:0;s:13:\"flag_trailing\";b:0;s:10:\"flag_regex\";b:0;}','yes');
INSERT INTO `w9th_options` VALUES (161,'bodhi_svgs_plugin_version','2.3.19','yes');
INSERT INTO `w9th_options` VALUES (162,'tadv_settings','a:9:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:13:\"toolbar_block\";s:78:\"core/code,core/image,core/strikethrough,tadv/mark,tadv/removeformat,core/image\";s:18:\"toolbar_block_side\";s:46:\"core/superscript,core/subscript,core/underline\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}','yes');
INSERT INTO `w9th_options` VALUES (163,'tadv_admin_settings','a:1:{s:7:\"options\";s:98:\"hybrid_mode,classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}','yes');
INSERT INTO `w9th_options` VALUES (164,'tadv_version','5600','yes');
INSERT INTO `w9th_options` VALUES (165,'wpseo','a:45:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";i:2;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:4:\"17.5\";s:16:\"previous_version\";s:5:\"9.2.1\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:0;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1636106073;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:0;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:46:\"/index.php/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:18:\"http://sagethem.vm\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:6:{s:19:\"category_leadership\";s:19:\"category_leadership\";s:13:\"category_news\";s:13:\"category_news\";s:14:\"category_event\";s:14:\"category_event\";s:17:\"category_resource\";s:17:\"category_resource\";s:12:\"category_faq\";s:12:\"category_faq\";s:20:\"category_testimonial\";s:20:\"category_testimonial\";}s:29:\"enable_enhanced_slack_sharing\";b:0;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:0;s:23:\"enable_link_suggestions\";b:0;s:26:\"algolia_integration_active\";b:0;}','yes');
INSERT INTO `w9th_options` VALUES (166,'wpseo_titles','a:237:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:16:\"title-leadership\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-leadership\";s:0:\"\";s:18:\"noindex-leadership\";b:0;s:29:\"display-metabox-pt-leadership\";b:1;s:29:\"post_types-leadership-maintax\";i:0;s:27:\"schema-page-type-leadership\";s:7:\"WebPage\";s:30:\"schema-article-type-leadership\";s:4:\"None\";s:23:\"social-title-leadership\";s:9:\"%%title%%\";s:29:\"social-description-leadership\";s:0:\"\";s:27:\"social-image-url-leadership\";s:0:\"\";s:26:\"social-image-id-leadership\";i:0;s:10:\"title-news\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-news\";s:0:\"\";s:12:\"noindex-news\";b:0;s:23:\"display-metabox-pt-news\";b:1;s:23:\"post_types-news-maintax\";i:0;s:21:\"schema-page-type-news\";s:7:\"WebPage\";s:24:\"schema-article-type-news\";s:4:\"None\";s:17:\"social-title-news\";s:9:\"%%title%%\";s:23:\"social-description-news\";s:0:\"\";s:21:\"social-image-url-news\";s:0:\"\";s:20:\"social-image-id-news\";i:0;s:11:\"title-event\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-event\";s:0:\"\";s:13:\"noindex-event\";b:0;s:24:\"display-metabox-pt-event\";b:1;s:24:\"post_types-event-maintax\";i:0;s:22:\"schema-page-type-event\";s:7:\"WebPage\";s:25:\"schema-article-type-event\";s:4:\"None\";s:18:\"social-title-event\";s:9:\"%%title%%\";s:24:\"social-description-event\";s:0:\"\";s:22:\"social-image-url-event\";s:0:\"\";s:21:\"social-image-id-event\";i:0;s:14:\"title-resource\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-resource\";s:0:\"\";s:16:\"noindex-resource\";b:0;s:27:\"display-metabox-pt-resource\";b:1;s:27:\"post_types-resource-maintax\";i:0;s:25:\"schema-page-type-resource\";s:7:\"WebPage\";s:28:\"schema-article-type-resource\";s:4:\"None\";s:21:\"social-title-resource\";s:9:\"%%title%%\";s:27:\"social-description-resource\";s:0:\"\";s:25:\"social-image-url-resource\";s:0:\"\";s:24:\"social-image-id-resource\";i:0;s:14:\"title-location\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-location\";s:0:\"\";s:16:\"noindex-location\";b:0;s:27:\"display-metabox-pt-location\";b:1;s:27:\"post_types-location-maintax\";i:0;s:25:\"schema-page-type-location\";s:7:\"WebPage\";s:28:\"schema-article-type-location\";s:4:\"None\";s:21:\"social-title-location\";s:9:\"%%title%%\";s:27:\"social-description-location\";s:0:\"\";s:25:\"social-image-url-location\";s:0:\"\";s:24:\"social-image-id-location\";i:0;s:9:\"title-faq\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:12:\"metadesc-faq\";s:0:\"\";s:11:\"noindex-faq\";b:0;s:22:\"display-metabox-pt-faq\";b:1;s:22:\"post_types-faq-maintax\";i:0;s:20:\"schema-page-type-faq\";s:7:\"WebPage\";s:23:\"schema-article-type-faq\";s:4:\"None\";s:16:\"social-title-faq\";s:9:\"%%title%%\";s:22:\"social-description-faq\";s:0:\"\";s:20:\"social-image-url-faq\";s:0:\"\";s:19:\"social-image-id-faq\";i:0;s:17:\"title-testimonial\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-testimonial\";s:0:\"\";s:19:\"noindex-testimonial\";b:0;s:30:\"display-metabox-pt-testimonial\";b:1;s:30:\"post_types-testimonial-maintax\";i:0;s:28:\"schema-page-type-testimonial\";s:7:\"WebPage\";s:31:\"schema-article-type-testimonial\";s:4:\"None\";s:24:\"social-title-testimonial\";s:9:\"%%title%%\";s:30:\"social-description-testimonial\";s:0:\"\";s:28:\"social-image-url-testimonial\";s:0:\"\";s:27:\"social-image-id-testimonial\";i:0;s:29:\"title-tax-category_leadership\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:32:\"metadesc-tax-category_leadership\";s:0:\"\";s:39:\"display-metabox-tax-category_leadership\";b:1;s:31:\"noindex-tax-category_leadership\";b:0;s:36:\"social-title-tax-category_leadership\";s:23:\"%%term_title%% Archives\";s:42:\"social-description-tax-category_leadership\";s:0:\"\";s:40:\"social-image-url-tax-category_leadership\";s:0:\"\";s:39:\"social-image-id-tax-category_leadership\";i:0;s:37:\"taxonomy-category_leadership-ptparent\";i:0;s:23:\"title-tax-category_news\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-tax-category_news\";s:0:\"\";s:33:\"display-metabox-tax-category_news\";b:1;s:25:\"noindex-tax-category_news\";b:0;s:30:\"social-title-tax-category_news\";s:23:\"%%term_title%% Archives\";s:36:\"social-description-tax-category_news\";s:0:\"\";s:34:\"social-image-url-tax-category_news\";s:0:\"\";s:33:\"social-image-id-tax-category_news\";i:0;s:31:\"taxonomy-category_news-ptparent\";i:0;s:24:\"title-tax-category_event\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-tax-category_event\";s:0:\"\";s:34:\"display-metabox-tax-category_event\";b:1;s:26:\"noindex-tax-category_event\";b:0;s:31:\"social-title-tax-category_event\";s:23:\"%%term_title%% Archives\";s:37:\"social-description-tax-category_event\";s:0:\"\";s:35:\"social-image-url-tax-category_event\";s:0:\"\";s:34:\"social-image-id-tax-category_event\";i:0;s:32:\"taxonomy-category_event-ptparent\";i:0;s:27:\"title-tax-category_resource\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-tax-category_resource\";s:0:\"\";s:37:\"display-metabox-tax-category_resource\";b:1;s:29:\"noindex-tax-category_resource\";b:0;s:34:\"social-title-tax-category_resource\";s:23:\"%%term_title%% Archives\";s:40:\"social-description-tax-category_resource\";s:0:\"\";s:38:\"social-image-url-tax-category_resource\";s:0:\"\";s:37:\"social-image-id-tax-category_resource\";i:0;s:35:\"taxonomy-category_resource-ptparent\";i:0;s:22:\"title-tax-category_faq\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-tax-category_faq\";s:0:\"\";s:32:\"display-metabox-tax-category_faq\";b:1;s:24:\"noindex-tax-category_faq\";b:0;s:29:\"social-title-tax-category_faq\";s:23:\"%%term_title%% Archives\";s:35:\"social-description-tax-category_faq\";s:0:\"\";s:33:\"social-image-url-tax-category_faq\";s:0:\"\";s:32:\"social-image-id-tax-category_faq\";i:0;s:30:\"taxonomy-category_faq-ptparent\";i:0;s:30:\"title-tax-category_testimonial\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:33:\"metadesc-tax-category_testimonial\";s:0:\"\";s:40:\"display-metabox-tax-category_testimonial\";b:1;s:32:\"noindex-tax-category_testimonial\";b:0;s:37:\"social-title-tax-category_testimonial\";s:23:\"%%term_title%% Archives\";s:43:\"social-description-tax-category_testimonial\";s:0:\"\";s:41:\"social-image-url-tax-category_testimonial\";s:0:\"\";s:40:\"social-image-id-tax-category_testimonial\";i:0;s:38:\"taxonomy-category_testimonial-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `w9th_options` VALUES (167,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes');
INSERT INTO `w9th_options` VALUES (168,'wpseo_flush_rewrite','1','yes');
INSERT INTO `w9th_options` VALUES (169,'_transient_timeout_wpseo_link_table_inaccessible','1667642073','no');
INSERT INTO `w9th_options` VALUES (170,'_transient_wpseo_link_table_inaccessible','0','no');
INSERT INTO `w9th_options` VALUES (171,'_transient_timeout_wpseo_meta_table_inaccessible','1667642073','no');
INSERT INTO `w9th_options` VALUES (172,'_transient_wpseo_meta_table_inaccessible','0','no');
INSERT INTO `w9th_options` VALUES (175,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (177,'acf_version','5.10.2','yes');
INSERT INTO `w9th_options` VALUES (180,'current_theme','Sage Starter Theme','yes');
INSERT INTO `w9th_options` VALUES (181,'theme_mods_sage-theme/resources','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `w9th_options` VALUES (182,'theme_switched','','yes');
INSERT INTO `w9th_options` VALUES (183,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"17.5\";}','yes');
INSERT INTO `w9th_options` VALUES (184,'wpseo_ryte','a:2:{s:6:\"status\";i:0;s:10:\"last_fetch\";i:1636106076;}','yes');
INSERT INTO `w9th_options` VALUES (195,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":4,\"critical\":1}','yes');
INSERT INTO `w9th_options` VALUES (234,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (235,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `w9th_options` VALUES (257,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1639662271;s:8:\"response\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:49:\"duplicate-wp-page-post/duplicate-wp-page-post.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/duplicate-wp-page-post\";s:4:\"slug\";s:22:\"duplicate-wp-page-post\";s:6:\"plugin\";s:49:\"duplicate-wp-page-post/duplicate-wp-page-post.php\";s:11:\"new_version\";s:5:\"2.6.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/duplicate-wp-page-post/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/duplicate-wp-page-post.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/duplicate-wp-page-post/assets/icon-128x128.png?rev=1572300\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/duplicate-wp-page-post/assets/banner-772x250.png?rev=1572325\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"17.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.17.8.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:11:{s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.6.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2390186\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2390186\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}s:49:\"advanced-tinymce-configuration/adv-mce-config.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"w.org/plugins/advanced-tinymce-configuration\";s:4:\"slug\";s:30:\"advanced-tinymce-configuration\";s:6:\"plugin\";s:49:\"advanced-tinymce-configuration/adv-mce-config.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/advanced-tinymce-configuration/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/advanced-tinymce-configuration.1.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:74:\"https://s.w.org/plugins/geopattern-icon/advanced-tinymce-configuration.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.4.9\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/intuitive-custom-post-order\";s:4:\"slug\";s:27:\"intuitive-custom-post-order\";s:6:\"plugin\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/intuitive-custom-post-order/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-256x256.png?rev=1078797\";s:2:\"1x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-128x128.png?rev=1078797\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-1544x500.png?rev=1209666\";s:2:\"1x\";s:82:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-772x250.png?rev=1078755\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.5.0\";}s:29:\"wp-mail-bank/wp-mail-bank.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-bank\";s:4:\"slug\";s:12:\"wp-mail-bank\";s:6:\"plugin\";s:29:\"wp-mail-bank/wp-mail-bank.php\";s:11:\"new_version\";s:6:\"4.0.14\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-bank/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-bank.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-bank/assets/icon-256x256.png?rev=1966190\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-bank/assets/icon-128x128.png?rev=1966190\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-bank/assets/banner-1544x500.png?rev=1966190\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-bank/assets/banner-772x250.png?rev=1966191\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:27:\"redirection/redirection.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/redirection\";s:4:\"slug\";s:11:\"redirection\";s:6:\"plugin\";s:27:\"redirection/redirection.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redirection/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/redirection.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/redirection/assets/icon-256x256.jpg?rev=983639\";s:2:\"1x\";s:63:\"https://ps.w.org/redirection/assets/icon-128x128.jpg?rev=983640\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/redirection/assets/banner-1544x500.jpg?rev=983641\";s:2:\"1x\";s:65:\"https://ps.w.org/redirection/assets/banner-772x250.jpg?rev=983642\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.19\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.19.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:61:\"visual-editor-custom-buttons/visual-editor-custom-buttons.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:42:\"w.org/plugins/visual-editor-custom-buttons\";s:4:\"slug\";s:28:\"visual-editor-custom-buttons\";s:6:\"plugin\";s:61:\"visual-editor-custom-buttons/visual-editor-custom-buttons.php\";s:11:\"new_version\";s:7:\"1.5.2.3\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/visual-editor-custom-buttons/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/visual-editor-custom-buttons.1.5.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/visual-editor-custom-buttons/assets/icon-256x256.png?rev=1116627\";s:2:\"1x\";s:81:\"https://ps.w.org/visual-editor-custom-buttons/assets/icon-128x128.png?rev=1116627\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/visual-editor-custom-buttons/assets/banner-772x250.jpg?rev=636071\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}}','no');
INSERT INTO `w9th_options` VALUES (292,'_transient_timeout_acf_plugin_updates','1639835073','no');
INSERT INTO `w9th_options` VALUES (293,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.10.2\";}}','no');
INSERT INTO `w9th_options` VALUES (294,'_site_transient_timeout_theme_roots','1639664079','no');
INSERT INTO `w9th_options` VALUES (295,'_site_transient_theme_roots','a:1:{s:20:\"sage-theme/resources\";s:7:\"/themes\";}','no');
INSERT INTO `w9th_options` VALUES (296,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1640267086','no');
INSERT INTO `w9th_options` VALUES (297,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `w9th_options` VALUES (298,'rewrite_rules','a:265:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/vecb_editor_buttons/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/vecb_editor_buttons/([^/]+)/embed/?$\";s:52:\"index.php?vecb_editor_buttons=$matches[1]&embed=true\";s:50:\"index.php/vecb_editor_buttons/([^/]+)/trackback/?$\";s:46:\"index.php?vecb_editor_buttons=$matches[1]&tb=1\";s:58:\"index.php/vecb_editor_buttons/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?vecb_editor_buttons=$matches[1]&paged=$matches[2]\";s:65:\"index.php/vecb_editor_buttons/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?vecb_editor_buttons=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/vecb_editor_buttons/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?vecb_editor_buttons=$matches[1]&page=$matches[2]\";s:46:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/vecb_editor_buttons/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:70:\"index.php/category_leadership/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?category_leadership=$matches[1]&feed=$matches[2]\";s:65:\"index.php/category_leadership/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?category_leadership=$matches[1]&feed=$matches[2]\";s:46:\"index.php/category_leadership/([^/]+)/embed/?$\";s:52:\"index.php?category_leadership=$matches[1]&embed=true\";s:58:\"index.php/category_leadership/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?category_leadership=$matches[1]&paged=$matches[2]\";s:40:\"index.php/category_leadership/([^/]+)/?$\";s:41:\"index.php?category_leadership=$matches[1]\";s:48:\"index.php/leadership/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"index.php/leadership/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"index.php/leadership/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/leadership/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/leadership/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/leadership/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"index.php/leadership/([^/]+)/embed/?$\";s:43:\"index.php?leadership=$matches[1]&embed=true\";s:41:\"index.php/leadership/([^/]+)/trackback/?$\";s:37:\"index.php?leadership=$matches[1]&tb=1\";s:49:\"index.php/leadership/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?leadership=$matches[1]&paged=$matches[2]\";s:56:\"index.php/leadership/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?leadership=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/leadership/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?leadership=$matches[1]&page=$matches[2]\";s:37:\"index.php/leadership/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/leadership/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/leadership/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/leadership/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/leadership/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/leadership/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"index.php/category_news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_news=$matches[1]&feed=$matches[2]\";s:59:\"index.php/category_news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_news=$matches[1]&feed=$matches[2]\";s:40:\"index.php/category_news/([^/]+)/embed/?$\";s:46:\"index.php?category_news=$matches[1]&embed=true\";s:52:\"index.php/category_news/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_news=$matches[1]&paged=$matches[2]\";s:34:\"index.php/category_news/([^/]+)/?$\";s:35:\"index.php?category_news=$matches[1]\";s:42:\"index.php/news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"index.php/news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"index.php/news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"index.php/news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"index.php/news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:35:\"index.php/news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:43:\"index.php/news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:50:\"index.php/news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:31:\"index.php/news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"index.php/news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"index.php/news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:65:\"index.php/category_event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?category_event=$matches[1]&feed=$matches[2]\";s:60:\"index.php/category_event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?category_event=$matches[1]&feed=$matches[2]\";s:41:\"index.php/category_event/([^/]+)/embed/?$\";s:47:\"index.php?category_event=$matches[1]&embed=true\";s:53:\"index.php/category_event/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?category_event=$matches[1]&paged=$matches[2]\";s:35:\"index.php/category_event/([^/]+)/?$\";s:36:\"index.php?category_event=$matches[1]\";s:43:\"index.php/event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"index.php/event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"index.php/event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"index.php/event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:36:\"index.php/event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:44:\"index.php/event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:51:\"index.php/event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:32:\"index.php/event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"index.php/event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"index.php/event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:68:\"index.php/category_resource/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_resource=$matches[1]&feed=$matches[2]\";s:63:\"index.php/category_resource/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?category_resource=$matches[1]&feed=$matches[2]\";s:44:\"index.php/category_resource/([^/]+)/embed/?$\";s:50:\"index.php?category_resource=$matches[1]&embed=true\";s:56:\"index.php/category_resource/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?category_resource=$matches[1]&paged=$matches[2]\";s:38:\"index.php/category_resource/([^/]+)/?$\";s:39:\"index.php?category_resource=$matches[1]\";s:46:\"index.php/resource/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/resource/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/resource/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/resource/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/resource/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/resource/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/resource/([^/]+)/embed/?$\";s:41:\"index.php?resource=$matches[1]&embed=true\";s:39:\"index.php/resource/([^/]+)/trackback/?$\";s:35:\"index.php?resource=$matches[1]&tb=1\";s:47:\"index.php/resource/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?resource=$matches[1]&paged=$matches[2]\";s:54:\"index.php/resource/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?resource=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/resource/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?resource=$matches[1]&page=$matches[2]\";s:35:\"index.php/resource/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/resource/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/resource/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/resource/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/resource/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/resource/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/location/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/location/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/location/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/location/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/location/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/location/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/location/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:39:\"index.php/location/([^/]+)/trackback/?$\";s:35:\"index.php?location=$matches[1]&tb=1\";s:47:\"index.php/location/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:54:\"index.php/location/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/location/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?location=$matches[1]&page=$matches[2]\";s:35:\"index.php/location/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/location/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/location/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/location/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/location/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/location/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/category_faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?category_faq=$matches[1]&feed=$matches[2]\";s:58:\"index.php/category_faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?category_faq=$matches[1]&feed=$matches[2]\";s:39:\"index.php/category_faq/([^/]+)/embed/?$\";s:45:\"index.php?category_faq=$matches[1]&embed=true\";s:51:\"index.php/category_faq/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?category_faq=$matches[1]&paged=$matches[2]\";s:33:\"index.php/category_faq/([^/]+)/?$\";s:34:\"index.php?category_faq=$matches[1]\";s:41:\"index.php/faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"index.php/faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"index.php/faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"index.php/faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:34:\"index.php/faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:42:\"index.php/faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:49:\"index.php/faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:30:\"index.php/faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"index.php/faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"index.php/faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"index.php/faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:71:\"index.php/category_testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?category_testimonial=$matches[1]&feed=$matches[2]\";s:66:\"index.php/category_testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?category_testimonial=$matches[1]&feed=$matches[2]\";s:47:\"index.php/category_testimonial/([^/]+)/embed/?$\";s:53:\"index.php?category_testimonial=$matches[1]&embed=true\";s:59:\"index.php/category_testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?category_testimonial=$matches[1]&paged=$matches[2]\";s:41:\"index.php/category_testimonial/([^/]+)/?$\";s:42:\"index.php?category_testimonial=$matches[1]\";s:49:\"index.php/testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:42:\"index.php/testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:50:\"index.php/testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:57:\"index.php/testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:38:\"index.php/testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
/*!40000 ALTER TABLE `w9th_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_postmeta`
--

DROP TABLE IF EXISTS `w9th_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_postmeta`
--

LOCK TABLES `w9th_postmeta` WRITE;
/*!40000 ALTER TABLE `w9th_postmeta` DISABLE KEYS */;
INSERT INTO `w9th_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `w9th_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `w9th_postmeta` VALUES (3,5,'_form','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `w9th_postmeta` VALUES (4,5,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:64:\"[_site_title] <wordpress@wp-starter-develop.box.carbon8test.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `w9th_postmeta` VALUES (5,5,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:64:\"[_site_title] <wordpress@wp-starter-develop.box.carbon8test.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `w9th_postmeta` VALUES (6,5,'_messages','a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}');
INSERT INTO `w9th_postmeta` VALUES (7,5,'_additional_settings',NULL);
INSERT INTO `w9th_postmeta` VALUES (8,5,'_locale','en_US');
/*!40000 ALTER TABLE `w9th_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_posts`
--

DROP TABLE IF EXISTS `w9th_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_posts`
--

LOCK TABLES `w9th_posts` WRITE;
/*!40000 ALTER TABLE `w9th_posts` DISABLE KEYS */;
INSERT INTO `w9th_posts` VALUES (1,1,'2021-11-05 09:53:02','2021-11-05 09:53:02','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-11-05 09:53:02','2021-11-05 09:53:02','',0,'https://sagethem.vm/?p=1',0,'post','',1);
INSERT INTO `w9th_posts` VALUES (2,1,'2021-11-05 09:53:02','2021-11-05 09:53:02','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://sagethem.vm/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-11-05 09:53:02','2021-11-05 09:53:02','',0,'https://sagethem.vm/?page_id=2',0,'page','',0);
INSERT INTO `w9th_posts` VALUES (3,1,'2021-11-05 09:53:02','2021-11-05 09:53:02','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://sagethem.vm.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-11-05 09:53:02','2021-11-05 09:53:02','',0,'https://sagethem.vm/?page_id=3',0,'page','',0);
INSERT INTO `w9th_posts` VALUES (5,1,'2021-11-05 09:54:32','2021-11-05 09:54:32','<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-starter-develop.box.carbon8test.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-starter-develop.box.carbon8test.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2021-11-05 09:54:32','2021-11-05 09:54:32','',0,'https://sagethem.vm/?post_type=wpcf7_contact_form&p=5',0,'wpcf7_contact_form','',0);
/*!40000 ALTER TABLE `w9th_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_term_relationships`
--

DROP TABLE IF EXISTS `w9th_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_term_relationships`
--

LOCK TABLES `w9th_term_relationships` WRITE;
/*!40000 ALTER TABLE `w9th_term_relationships` DISABLE KEYS */;
INSERT INTO `w9th_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `w9th_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_term_taxonomy`
--

DROP TABLE IF EXISTS `w9th_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_term_taxonomy`
--

LOCK TABLES `w9th_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `w9th_term_taxonomy` DISABLE KEYS */;
INSERT INTO `w9th_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `w9th_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_termmeta`
--

DROP TABLE IF EXISTS `w9th_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_termmeta`
--

LOCK TABLES `w9th_termmeta` WRITE;
/*!40000 ALTER TABLE `w9th_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_terms`
--

DROP TABLE IF EXISTS `w9th_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_terms`
--

LOCK TABLES `w9th_terms` WRITE;
/*!40000 ALTER TABLE `w9th_terms` DISABLE KEYS */;
INSERT INTO `w9th_terms` VALUES (1,'Uncategorized','uncategorized',0,0);
/*!40000 ALTER TABLE `w9th_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_usermeta`
--

DROP TABLE IF EXISTS `w9th_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_usermeta`
--

LOCK TABLES `w9th_usermeta` WRITE;
/*!40000 ALTER TABLE `w9th_usermeta` DISABLE KEYS */;
INSERT INTO `w9th_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `w9th_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `w9th_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `w9th_usermeta` VALUES (4,1,'description','');
INSERT INTO `w9th_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `w9th_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `w9th_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `w9th_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `w9th_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `w9th_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `w9th_usermeta` VALUES (11,1,'locale','');
INSERT INTO `w9th_usermeta` VALUES (12,1,'w9th_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `w9th_usermeta` VALUES (13,1,'w9th_user_level','10');
INSERT INTO `w9th_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `w9th_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `w9th_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"10f79532401b68f44581b848f380d32c10a22798af01a9948c74bad56342fa08\";a:4:{s:10:\"expiration\";i:1638116203;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36\";s:5:\"login\";i:1637943403;}}');
INSERT INTO `w9th_usermeta` VALUES (17,1,'w9th_dashboard_quick_press_last_post_id','6');
INSERT INTO `w9th_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:13:\"192.168.156.0\";}');
INSERT INTO `w9th_usermeta` VALUES (20,1,'_yoast_wpseo_profile_updated','1636106135');
INSERT INTO `w9th_usermeta` VALUES (21,1,'last_login_time','2021-11-26 16:16:43');
INSERT INTO `w9th_usermeta` VALUES (22,1,'w9th_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:332:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"https://sagethem.vm/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$B0ZkLBWfeaIbs9rAvoqmHlfgJfoNVO1\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:19:\"vu.vo@9thwonder.com\";s:8:\"user_url\";s:19:\"https://sagethem.vm\";s:15:\"user_registered\";s:19:\"2021-11-05 09:53:02\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"w9th_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
/*!40000 ALTER TABLE `w9th_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_users`
--

DROP TABLE IF EXISTS `w9th_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_users`
--

LOCK TABLES `w9th_users` WRITE;
/*!40000 ALTER TABLE `w9th_users` DISABLE KEYS */;
INSERT INTO `w9th_users` VALUES (1,'admin','$P$BpMerm1.OX6roBwegxq6gTL6Ak93gs0','admin','vu.vo@9thwonder.com','https://sagethem.vm','2021-11-05 09:53:02','',0,'admin');
/*!40000 ALTER TABLE `w9th_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_indexable`
--

DROP TABLE IF EXISTS `w9th_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_indexable`
--

LOCK TABLES `w9th_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_indexable` DISABLE KEYS */;
INSERT INTO `w9th_yoast_indexable` VALUES (1,NULL,NULL,NULL,'home-page',NULL,NULL,NULL,'%%sitename%% %%page%% %%sep%% %%sitedesc%%','Just another WordPress site','Home',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,'%%sitename%%','','','0',NULL,NULL,NULL,NULL,NULL,'2021-11-08 01:47:40','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (2,NULL,NULL,1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://secure.gravatar.com/avatar/b263945e24191a0ea74697bf181aaf96?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://secure.gravatar.com/avatar/b263945e24191a0ea74697bf181aaf96?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (3,NULL,NULL,3,'post','page',1,0,NULL,NULL,'Privacy Policy','draft',0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (4,NULL,NULL,2,'post','page',1,0,NULL,NULL,'Sample Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (5,NULL,NULL,1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (6,NULL,NULL,1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (7,NULL,NULL,NULL,'system-page','404',NULL,NULL,'Page not found %%sep%% %%sitename%%',NULL,'Error 404: Page not found',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (8,NULL,NULL,NULL,'system-page','search-result',NULL,NULL,'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `w9th_yoast_indexable` VALUES (9,NULL,NULL,NULL,'date-archive',NULL,NULL,NULL,'%%date%% %%page%% %%sep%% %%sitename%%','',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 01:48:08','2021-11-26 16:10:14',1,NULL,NULL,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `w9th_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `w9th_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_indexable_hierarchy`
--

LOCK TABLES `w9th_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `w9th_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `w9th_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `w9th_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `w9th_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `w9th_yoast_indexable_hierarchy` VALUES (6,0,0,1);
/*!40000 ALTER TABLE `w9th_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_migrations`
--

DROP TABLE IF EXISTS `w9th_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `w9th_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_migrations`
--

LOCK TABLES `w9th_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_migrations` DISABLE KEYS */;
INSERT INTO `w9th_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `w9th_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `w9th_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `w9th_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `w9th_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `w9th_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `w9th_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `w9th_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `w9th_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `w9th_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `w9th_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `w9th_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `w9th_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `w9th_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `w9th_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `w9th_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `w9th_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `w9th_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `w9th_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `w9th_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `w9th_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `w9th_yoast_migrations` VALUES (22,'20210817092415');
/*!40000 ALTER TABLE `w9th_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_primary_term`
--

DROP TABLE IF EXISTS `w9th_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_primary_term`
--

LOCK TABLES `w9th_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_seo_links`
--

DROP TABLE IF EXISTS `w9th_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_seo_links`
--

LOCK TABLES `w9th_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `w9th_yoast_seo_links` VALUES (1,'https://sagethem.vm/wp-admin/',2,0,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `w9th_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w9th_yoast_seo_meta`
--

DROP TABLE IF EXISTS `w9th_yoast_seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `w9th_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w9th_yoast_seo_meta`
--

LOCK TABLES `w9th_yoast_seo_meta` WRITE;
/*!40000 ALTER TABLE `w9th_yoast_seo_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `w9th_yoast_seo_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 20:51:51
