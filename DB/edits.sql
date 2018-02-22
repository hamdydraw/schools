ALTER TABLE `users` ADD `default_lang` INT NULL DEFAULT NULL AFTER `role_id`;
UPDATE users SET default_lang = 9


-- new table user_notification
CREATE TABLE `user_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notification_id` (`notification_id`);


ALTER TABLE `user_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;


ALTER TABLE `user_notification`
  ADD CONSTRAINT `notifi_id` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- the end

--new table user_feedback
CREATE TABLE `user_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `feedback_id` (`feedback_id`);

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--end

--drop old dates
ALTER TABLE `couponcodes_usage` DROP `created_at`;
ALTER TABLE `password_resets` DROP `updated_at`;
ALTER TABLE `user_feedback` DROP `updated_at`;
ALTER TABLE `user_notification` DROP `updated_at`;

--add updated at

ALTER TABLE academics_semesters ADD updated_at TIMESTAMP;
ALTER TABLE countries ADD updated_at TIMESTAMP;
ALTER TABLE password_resets    ADD updated_at TIMESTAMP;
ALTER TABLE permission_role ADD updated_at TIMESTAMP;
ALTER TABLE role_user ADD updated_at TIMESTAMP;
ALTER TABLE user_feedback  ADD updated_at TIMESTAMP;
ALTER TABLE user_notification   ADD updated_at TIMESTAMP;
ALTER TABLE couponcodes_usage    ADD updated_at TIMESTAMP;

--add created at
ALTER TABLE `academics_semesters` ADD `created_at` TIMESTAMP;
ALTER TABLE `countries` ADD `created_at` TIMESTAMP;
ALTER TABLE `password_resets` ADD `created_at` TIMESTAMP;
ALTER TABLE `permission_role` ADD `created_at` TIMESTAMP;
ALTER TABLE `role_user` ADD `created_at` TIMESTAMP;
ALTER TABLE `user_feedback` ADD `created_at` TIMESTAMP;
ALTER TABLE `user_notification` ADD `created_at` TIMESTAMP;
ALTER TABLE `couponcodes_usage` ADD `created_at` TIMESTAMP;

--user edit

ALTER TABLE `users` ADD `id_number` VARCHAR(150) NULL DEFAULT NULL AFTER `username`;

ALTER TABLE `users` ADD UNIQUE(`id_number`);