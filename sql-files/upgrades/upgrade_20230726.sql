ALTER TABLE `login`
ADD COLUMN `last_mac` varchar(33) NOT NULL DEFAULT '' AFTER `last_ip`;

ALTER TABLE `loginlog`
ADD COLUMN `mac`  varchar(33) NOT NULL DEFAULT '' AFTER `ip`;