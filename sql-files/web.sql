
--
-- Table structure for table `guild_emblems`
--

CREATE TABLE IF NOT EXISTS `guild_emblems` (
  `world_name` varchar(32) NOT NULL,
  `guild_id` int(11) unsigned NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_data` blob,
  `version` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY (`world_name`, `guild_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `user_configs`
--

CREATE TABLE IF NOT EXISTS `user_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`world_name`, `account_id`)
) ENGINE=MyISAM;


--
-- Table structure for table `char_configs`
--

CREATE TABLE IF NOT EXISTS `char_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`world_name`, `account_id`, `char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `merchant_configs`
--

CREATE TABLE IF NOT EXISTS `merchant_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` INT(11) UNSIGNED NOT NULL,
  `store_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext NOT NULL,
  PRIMARY KEY (`world_name`, `account_id`, `char_id`, `store_type`)
) ENGINE=MyISAM;

--
-- Table structure for table `party_bookings`
--

CREATE TABLE IF NOT EXISTS `party_bookings` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(23) NOT NULL,
  `purpose` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assist` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `damagedealer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `healer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tanker` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minimum_level` smallint(5) unsigned NOT NULL,
  `maximum_level` smallint(5) unsigned NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`world_name`, `account_id`, `char_id`)
) ENGINE=MyISAM;
