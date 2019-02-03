ALTER TABLE `messenger_threads` ADD `sender` INT NOT NULL AFTER `subject`;
ALTER TABLE `messenger_participants` ADD `is_archived` TINYINT NOT NULL DEFAULT '0' AFTER `last_read`;