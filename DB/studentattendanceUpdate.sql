ALTER TABLE `studentattendance` ADD `health_status` TEXT NULL DEFAULT NULL AFTER `notes`; 
ALTER TABLE `studentattendance` CHANGE `remarks` `activities` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL;
