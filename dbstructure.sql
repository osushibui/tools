-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ripple
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `2fa`
--

DROP TABLE IF EXISTS `2fa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2fa` (
  `userid` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `2fa_telegram`
--

DROP TABLE IF EXISTS `2fa_telegram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2fa_telegram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `2fa_totp`
--

DROP TABLE IF EXISTS `2fa_totp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2fa_totp` (
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `description` varchar(128) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(32) CHARACTER SET latin1 NOT NULL,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `badges`
--

DROP TABLE IF EXISTS `badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `badges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancho_channels`
--

DROP TABLE IF EXISTS `bancho_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancho_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(127) NOT NULL,
  `public_read` tinyint(4) NOT NULL,
  `public_write` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `temp` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancho_messages`
--

DROP TABLE IF EXISTS `bancho_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancho_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `msg_to` varchar(32) CHARACTER SET latin1 NOT NULL,
  `msg` varchar(127) CHARACTER SET latin1 NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancho_private_messages`
--

DROP TABLE IF EXISTS `bancho_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancho_private_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `msg_to` varchar(32) CHARACTER SET latin1 NOT NULL,
  `msg` varchar(127) CHARACTER SET latin1 NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancho_settings`
--

DROP TABLE IF EXISTS `bancho_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancho_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT 0,
  `value_string` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancho_tokens`
--

DROP TABLE IF EXISTS `bancho_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancho_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(16) CHARACTER SET latin1 NOT NULL,
  `osu_id` int(11) NOT NULL,
  `latest_message_id` int(11) NOT NULL,
  `latest_private_message_id` int(11) NOT NULL,
  `latest_packet_time` int(11) NOT NULL,
  `latest_heavy_packet_time` int(11) NOT NULL,
  `joined_channels` varchar(512) CHARACTER SET latin1 NOT NULL,
  `game_mode` tinyint(4) NOT NULL,
  `action` int(11) NOT NULL,
  `action_text` varchar(128) CHARACTER SET latin1 NOT NULL,
  `kicked` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancho_settings`
--

INSERT INTO `bancho_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'bancho_maintenance', 0, ''),
(2, 'free_direct', 1, ''),
(3, 'menu_icon', 1, 'https://i.ppy.sh/logo.png | https://bigtu.vip'),
(4, 'login_messages', 1, ''),
(5, 'restricted_joke', 0, 'You\'re banned from the server.'),
(6, 'login_notification', 1, 'Welcome to pep.py'),
(7, 'osu_versions', 0, ''),
(8, 'osu_md5s', 0, '');
--
-- Table structure for table `beatmaps`
--

DROP TABLE IF EXISTS `beatmaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beatmaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_id` int(11) NOT NULL DEFAULT 0,
  `beatmapset_id` int(11) NOT NULL DEFAULT 0,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `song_name` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ar` float NOT NULL DEFAULT 0,
  `od` float NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 10,
  `difficulty_std` float NOT NULL DEFAULT 0,
  `difficulty_taiko` float NOT NULL DEFAULT 0,
  `difficulty_ctb` float NOT NULL DEFAULT 0,
  `difficulty_mania` float NOT NULL DEFAULT 0,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `hit_length` int(11) NOT NULL DEFAULT 0,
  `bpm` int(11) NOT NULL DEFAULT 0,
  `ranked` tinyint(4) NOT NULL DEFAULT 0,
  `latest_update` int(11) NOT NULL DEFAULT 0,
  `ranked_status_freezed` tinyint(1) NOT NULL DEFAULT 0,
  `playcount` int(11) NOT NULL DEFAULT 0,
  `passcount` int(11) NOT NULL DEFAULT 0,
  `pp_100` int(11) NOT NULL DEFAULT 0,
  `pp_99` int(11) NOT NULL DEFAULT 0,
  `pp_98` int(11) NOT NULL DEFAULT 0,
  `pp_95` int(11) NOT NULL DEFAULT 0,
  `disable_pp` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16816 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beatmaps_names`
--

DROP TABLE IF EXISTS `beatmaps_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beatmaps_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `beatmap_name` varchar(256) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beatmaps_rating`
--

DROP TABLE IF EXISTS `beatmaps_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beatmaps_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `beta_keys`
--

DROP TABLE IF EXISTS `beta_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beta_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(128) NOT NULL DEFAULT '',
  `allowed` tinyint(4) NOT NULL DEFAULT 0,
  `public` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clans`
--

DROP TABLE IF EXISTS `clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `tag` varchar(5) NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `mlimit` int(255) NOT NULL DEFAULT 16,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clans_invites`
--

DROP TABLE IF EXISTS `clans_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans_invites` (
  `clan` int(11) NOT NULL,
  `invite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NOT NULL DEFAULT 0,
  `beatmapset_id` int(11) NOT NULL DEFAULT 0,
  `score_id` int(11) NOT NULL DEFAULT 0,
  `comment` varchar(128) CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL,
  `who` varchar(11) NOT NULL,
  `special_format` varchar(2556) CHARACTER SET utf8 DEFAULT 'FFFFFF',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discord_roles`
--

DROP TABLE IF EXISTS `discord_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discord_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `discordid` bigint(19) NOT NULL,
  `roleid` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'New Documentation File',
  `doc_contents` mediumtext CHARACTER SET latin1 NOT NULL,
  `public` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `old_name` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_verification`
--

DROP TABLE IF EXISTS `email_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(256) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hw_user`
--

DROP TABLE IF EXISTS `hw_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hw_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `mac` varchar(32) CHARACTER SET latin1 NOT NULL,
  `unique_id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `disk_id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `occurencies` int(11) NOT NULL DEFAULT 0,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `identity_tokens`
--

DROP TABLE IF EXISTS `identity_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identity_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(64) CHARACTER SET latin1 NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_user`
--

DROP TABLE IF EXISTS `ip_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_user` (
  `userid` int(11) NOT NULL,
  `ip` text CHARACTER SET latin1 NOT NULL,
  `occurencies` int(11) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `irc_tokens`
--

DROP TABLE IF EXISTS `irc_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irc_tokens` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `token` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leaderboard_ctb`
--

DROP TABLE IF EXISTS `leaderboard_ctb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaderboard_ctb` (
  `position` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leaderboard_mania`
--

DROP TABLE IF EXISTS `leaderboard_mania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaderboard_mania` (
  `position` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leaderboard_std`
--

DROP TABLE IF EXISTS `leaderboard_std`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaderboard_std` (
  `position` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leaderboard_taiko`
--

DROP TABLE IF EXISTS `leaderboard_taiko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaderboard_taiko` (
  `position` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `main_menu_icons`
--

DROP TABLE IF EXISTS `main_menu_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_menu_icons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_current` int(11) NOT NULL,
  `file_id` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `osin_access`
--

DROP TABLE IF EXISTS `osin_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osin_access` (
  `scope` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0,
  `client` int(11) NOT NULL DEFAULT 0,
  `extra` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `osin_client`
--

DROP TABLE IF EXISTS `osin_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osin_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secret` varchar(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `extra` varchar(127) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `redirect_uri` varchar(127) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `osin_client_user`
--

DROP TABLE IF EXISTS `osin_client_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osin_client_user` (
  `client_id` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_recovery`
--

DROP TABLE IF EXISTS `password_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `k` varchar(80) CHARACTER SET latin1 NOT NULL,
  `u` varchar(30) CHARACTER SET latin1 NOT NULL,
  `t` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `points` (
  `userid` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `cmpoints` int(6) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pp_limits`
--

DROP TABLE IF EXISTS `pp_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_limits` (
  `relax_pp` int(11) NOT NULL,
  `flashlight_pp` int(11) NOT NULL,
  `gamemode` int(11) NOT NULL,
  `unrestricted_pp` int(11) NOT NULL,
  `pp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `private`
--

DROP TABLE IF EXISTS `private`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `c1` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privileges_groups`
--

DROP TABLE IF EXISTS `privileges_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profile_backgrounds`
--

DROP TABLE IF EXISTS `profile_backgrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_backgrounds` (
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rank_requests`
--

DROP TABLE IF EXISTS `rank_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `type` varchar(8) CHARACTER SET latin1 NOT NULL,
  `time` int(11) NOT NULL,
  `blacklisted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bid` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rap_logs`
--

DROP TABLE IF EXISTS `rap_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rap_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `text` longtext NOT NULL,
  `datetime` int(30) NOT NULL,
  `through` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2299 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `remember`
--

DROP TABLE IF EXISTS `remember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `series_identifier` int(11) DEFAULT NULL,
  `token_sha` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET latin1 NOT NULL,
  `from_username` varchar(32) CHARACTER SET latin1 NOT NULL,
  `content` varchar(1024) CHARACTER SET latin1 NOT NULL,
  `type` tinyint(4) NOT NULL,
  `open_time` varchar(18) CHARACTER SET latin1 NOT NULL,
  `update_time` varchar(18) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL,
  `response` varchar(1024) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rx_stats`
--

DROP TABLE IF EXISTS `rx_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rx_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_aka` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ranked_score_std` bigint(20) DEFAULT NULL,
  `playcount_std` int(11) NOT NULL DEFAULT 0,
  `total_score_std` bigint(20) DEFAULT NULL,
  `replays_watched_std` int(11) unsigned NOT NULL DEFAULT 0,
  `ranked_score_taiko` bigint(20) DEFAULT NULL,
  `playcount_taiko` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko` bigint(20) DEFAULT NULL,
  `replays_watched_taiko` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb` bigint(20) DEFAULT NULL,
  `playcount_ctb` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb` bigint(20) DEFAULT NULL,
  `replays_watched_ctb` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania` bigint(20) DEFAULT NULL,
  `playcount_mania` int(11) NOT NULL DEFAULT 0,
  `total_score_mania` bigint(20) DEFAULT NULL,
  `replays_watched_mania` int(10) unsigned NOT NULL DEFAULT 0,
  `total_hits_std` int(11) NOT NULL DEFAULT 0,
  `total_hits_taiko` int(11) NOT NULL DEFAULT 0,
  `total_hits_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_mania` int(11) NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET latin1 NOT NULL DEFAULT 'XX',
  `show_country` tinyint(4) NOT NULL DEFAULT 1,
  `level_std` int(11) NOT NULL DEFAULT 1,
  `level_taiko` int(11) NOT NULL DEFAULT 1,
  `level_ctb` int(11) NOT NULL DEFAULT 1,
  `level_mania` int(11) NOT NULL DEFAULT 1,
  `playtime_std` int(11) NOT NULL DEFAULT 0,
  `playtime_taiko` int(11) NOT NULL DEFAULT 0,
  `playtime_ctb` int(11) NOT NULL DEFAULT 0,
  `playtime_mania` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_taiko` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_ctb` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_mania` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `pp_std` int(11) NOT NULL DEFAULT 0,
  `pp_taiko` int(11) NOT NULL DEFAULT 0,
  `pp_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_mania` int(11) NOT NULL DEFAULT 0,
  `badges_shown` varchar(24) CHARACTER SET latin1 NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint(4) NOT NULL DEFAULT 0,
  `userpage_content` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `play_style` smallint(6) NOT NULL DEFAULT 0,
  `favourite_mode` tinyint(4) NOT NULL DEFAULT 0,
  `custom_badge_icon` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `custom_badge_name` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `can_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `show_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `unrestricted_pp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` float DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1456 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scores_auto`
--

DROP TABLE IF EXISTS `scores_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores_auto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scores_relax`
--

DROP TABLE IF EXISTS `scores_relax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scores_relax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT 0,
  `full_combo` tinyint(1) NOT NULL DEFAULT 0,
  `mods` int(11) NOT NULL DEFAULT 0,
  `300_count` int(11) NOT NULL DEFAULT 0,
  `100_count` int(11) NOT NULL DEFAULT 0,
  `50_count` int(11) NOT NULL DEFAULT 0,
  `katus_count` int(11) NOT NULL DEFAULT 0,
  `gekis_count` int(11) NOT NULL DEFAULT 0,
  `misses_count` int(11) NOT NULL DEFAULT 0,
  `time` varchar(18) NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT 0,
  `completed` tinyint(11) NOT NULL DEFAULT 0,
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `screenshots`
--

DROP TABLE IF EXISTS `screenshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenshots` (
  `userid` int(11) NOT NULL,
  `ssid` varchar(8) NOT NULL,
  `sstime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT 0,
  `value_string` varchar(512) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'website_maintenance', 0, ''),
(2, 'game_maintenance', 0, ''),
(3, 'website_global_alert', 0, '<center>Welcome to Ripple Clone! Setup by Aoba!
<br><a href="https://new.bigtu.vip/">You can play Ainu! here</a></center>'),
(4, 'website_home_alert', 0, 'Welcome to Ripple clone'),
(5, 'registrations_enabled', 1, ''),
(6, 'aql_threshold_std', 0, '1333.77'),
(7, 'aql_threshold_taiko', 0, '1333.77'),
(8, 'aql_threshold_ctb', 0, '1333.77'),
(9, 'aql_threshold_mania', 0, '1333.77'),
(10, 'ccreation_enabled', 1, 'nothing';
--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(31) CHARACTER SET latin1 NOT NULL,
  `privileges` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `token` varchar(127) CHARACTER SET latin1 NOT NULL,
  `private` tinyint(4) NOT NULL,
  `last_updated` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_badges`
--

DROP TABLE IF EXISTS `user_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_badges` (
  `user` int(11) NOT NULL,
  `badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_clans`
--

DROP TABLE IF EXISTS `user_clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_clans` (
  `user` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `perms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_safe` varchar(30) CHARACTER SET latin1 NOT NULL,
  `notes` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `ban_datetime` varchar(30) DEFAULT NULL,
  `password_md5` varchar(127) CHARACTER SET latin1 NOT NULL,
  `salt` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email` varchar(254) CHARACTER SET latin1 NOT NULL,
  `register_datetime` int(10) NOT NULL,
  `rank` tinyint(1) NOT NULL DEFAULT 1,
  `allowed` tinyint(1) NOT NULL DEFAULT 1,
  `latest_activity` int(10) NOT NULL DEFAULT 0,
  `silence_end` int(11) NOT NULL DEFAULT 0,
  `silence_reason` varchar(127) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password_version` tinyint(4) NOT NULL DEFAULT 1,
  `privileges` int(11) NOT NULL,
  `donor_expire` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `achievements_version` int(11) NOT NULL DEFAULT 4,
  `tracked` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `username_safe`, `notes`, `ban_datetime`, `password_md5`, `salt`, `email`, `register_datetime`, `rank`, `allowed`, `latest_activity`, `silence_end`, `silence_reason`, `password_version`, `privileges`, `donor_expire`, `flags`, `achievements_version`) VALUES
(999, 'AC', 'ac', '', NULL, '*0', '5e/AceVLS7jJtxTJA1U6rmVqrWREYg==', 'fo@kab.ot', 0, 4, 1, 0, 0, '', 1, 3145727, 0, 0, 0);
--
-- Table structure for table `users_achievements`
--

DROP TABLE IF EXISTS `users_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_beatmap_playcount`
--

DROP TABLE IF EXISTS `users_beatmap_playcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_beatmap_playcount` (
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) DEFAULT NULL,
  `game_mode` int(11) DEFAULT NULL,
  `playcount` int(11) DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `beatmap_id` (`beatmap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_relationships`
--

DROP TABLE IF EXISTS `users_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_stats`
--

DROP TABLE IF EXISTS `users_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `username_aka` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `user_color` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT 'black',
  `user_style` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ranked_score_std` bigint(20) DEFAULT NULL,
  `playcount_std` int(11) NOT NULL DEFAULT 0,
  `total_score_std` bigint(20) DEFAULT NULL,
  `replays_watched_std` int(11) unsigned NOT NULL DEFAULT 0,
  `ranked_score_taiko` bigint(20) DEFAULT NULL,
  `playcount_taiko` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko` bigint(20) DEFAULT NULL,
  `replays_watched_taiko` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb` bigint(20) DEFAULT NULL,
  `playcount_ctb` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb` bigint(20) DEFAULT NULL,
  `replays_watched_ctb` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania` bigint(20) DEFAULT NULL,
  `playcount_mania` int(11) NOT NULL DEFAULT 0,
  `total_score_mania` bigint(20) DEFAULT NULL,
  `replays_watched_mania` int(10) unsigned NOT NULL DEFAULT 0,
  `total_hits_std` int(11) NOT NULL DEFAULT 0,
  `total_hits_taiko` int(11) NOT NULL DEFAULT 0,
  `total_hits_ctb` int(11) NOT NULL DEFAULT 0,
  `total_hits_mania` int(11) NOT NULL DEFAULT 0,
  `country` char(2) CHARACTER SET latin1 NOT NULL DEFAULT 'XX',
  `show_country` tinyint(4) NOT NULL DEFAULT 1,
  `level_std` int(11) NOT NULL DEFAULT 1,
  `level_taiko` int(11) NOT NULL DEFAULT 1,
  `level_ctb` int(11) NOT NULL DEFAULT 1,
  `level_mania` int(11) NOT NULL DEFAULT 1,
  `playtime_std` int(11) NOT NULL DEFAULT 0,
  `playtime_taiko` int(11) NOT NULL DEFAULT 0,
  `playtime_ctb` int(11) NOT NULL DEFAULT 0,
  `playtime_mania` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_taiko` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_ctb` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `avg_accuracy_mania` float(15,12) NOT NULL DEFAULT 0.000000000000,
  `pp_std` int(11) NOT NULL DEFAULT 0,
  `pp_taiko` int(11) NOT NULL DEFAULT 0,
  `pp_ctb` int(11) NOT NULL DEFAULT 0,
  `pp_mania` int(11) NOT NULL DEFAULT 0,
  `badges_shown` varchar(24) CHARACTER SET latin1 NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint(4) NOT NULL DEFAULT 0,
  `userpage_content` mediumtext CHARACTER SET latin1 DEFAULT NULL,
  `play_style` smallint(6) NOT NULL DEFAULT 0,
  `favourite_mode` tinyint(4) NOT NULL DEFAULT 0,
  `custom_badge_icon` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `custom_badge_name` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `can_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `show_custom_badge` tinyint(1) NOT NULL DEFAULT 0,
  `ranked_score_std_rx` int(11) NOT NULL DEFAULT 0,
  `ranked_score_taiko_rx` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb_rx` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania_rx` int(11) NOT NULL DEFAULT 0,
  `ranked_score_std_ap` int(11) NOT NULL DEFAULT 0,
  `ranked_score_taiko_ap` int(11) NOT NULL DEFAULT 0,
  `ranked_score_ctb_ap` int(11) NOT NULL DEFAULT 0,
  `ranked_score_mania_ap` int(11) NOT NULL DEFAULT 0,
  `avg_accuracy_std_rx` float NOT NULL DEFAULT 0,
  `avg_accuracy_taiko_rx` float NOT NULL DEFAULT 0,
  `avg_accuracy_ctb_rx` float NOT NULL DEFAULT 0,
  `avg_accuracy_mania_rx` float NOT NULL DEFAULT 0,
  `avg_accuracy_std_ap` float NOT NULL DEFAULT 0,
  `avg_accuracy_taiko_ap` float NOT NULL DEFAULT 0,
  `avg_accuracy_ctb_ap` float NOT NULL DEFAULT 0,
  `avg_accuracy_mania_ap` float NOT NULL DEFAULT 0,
  `playcount_std_rx` int(11) NOT NULL DEFAULT 0,
  `playcount_taiko_rx` int(11) NOT NULL DEFAULT 0,
  `playcount_ctb_rx` int(11) NOT NULL DEFAULT 0,
  `playcount_mania_rx` int(11) NOT NULL DEFAULT 0,
  `playcount_std_ap` int(11) NOT NULL DEFAULT 0,
  `playcount_taiko_ap` int(11) NOT NULL DEFAULT 0,
  `playcount_ctb_ap` int(11) NOT NULL DEFAULT 0,
  `playcount_mania_ap` int(11) NOT NULL DEFAULT 0,
  `total_score_std_rx` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko_rx` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb_rx` int(11) NOT NULL DEFAULT 0,
  `total_score_mania_rx` int(11) NOT NULL DEFAULT 0,
  `total_score_std_ap` int(11) NOT NULL DEFAULT 0,
  `total_score_taiko_ap` int(11) NOT NULL DEFAULT 0,
  `total_score_ctb_ap` int(11) NOT NULL DEFAULT 0,
  `total_score_mania_ap` int(11) NOT NULL DEFAULT 0,
  `pp_std_rx` int(11) NOT NULL DEFAULT 0,
  `pp_taiko_rx` int(11) NOT NULL DEFAULT 0,
  `pp_ctb_rx` int(11) NOT NULL DEFAULT 0,
  `pp_mania_rx` int(11) NOT NULL DEFAULT 0,
  `pp_std_auto` int(11) NOT NULL DEFAULT 0,
  `pp_taiko_auto` int(11) NOT NULL DEFAULT 0,
  `pp_ctb_auto` int(11) NOT NULL DEFAULT 0,
  `pp_mania_auto` int(11) NOT NULL DEFAULT 0,
  `level_std_rx` int(11) NOT NULL DEFAULT 0,
  `level_taiko_rx` int(11) NOT NULL DEFAULT 0,
  `level_ctb_rx` int(11) NOT NULL DEFAULT 0,
  `level_mania_rx` int(11) NOT NULL DEFAULT 0,
  `level_std_ap` int(11) NOT NULL DEFAULT 0,
  `level_taiko_ap` int(11) NOT NULL DEFAULT 0,
  `level_ctb_ap` int(11) NOT NULL DEFAULT 0,
  `level_mania_ap` int(11) NOT NULL DEFAULT 0,
  `playtime_std_rx` int(11) NOT NULL DEFAULT 0,
  `playtime_std_ap` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Dumping data for table `users_stats`
--

INSERT INTO `users_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `ranked_score_std`, `playcount_std`, `total_score_std`, `replays_watched_std`, `ranked_score_taiko`, `playcount_taiko`, `total_score_taiko`, `replays_watched_taiko`, `ranked_score_ctb`, `playcount_ctb`, `total_score_ctb`, `replays_watched_ctb`, `ranked_score_mania`, `playcount_mania`, `total_score_mania`, `replays_watched_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `country`, `show_country`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `badges_shown`, `safe_title`, `userpage_content`, `play_style`, `favourite_mode`, `custom_badge_icon`, `custom_badge_name`, `can_custom_badge`, `show_custom_badge`) VALUES
(999, 'AC', '', 'black', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'KP', 1, 0, 0, 0, 0, 0.000000000000, 0.000000000000, 0.000000000000, 0.000000000000, 0, 0, 0, 0, '3,4,11,0,0,0', 0, '', 0, 0, '', '', 0, 0);
-- Dump completed on 2019-10-27 21:23:04
