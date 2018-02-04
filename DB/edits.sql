ALTER TABLE `users` ADD `default_lang` INT NULL DEFAULT NULL AFTER `role_id`;
UPDATE users SET default_lang = 9