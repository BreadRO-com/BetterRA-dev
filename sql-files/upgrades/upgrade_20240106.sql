TRUNCATE TABLE `guild_expulsion`;
ALTER TABLE `guild_expulsion` ADD `char_id` int(11) unsigned NOT NULL default '0' AFTER `account_id`;