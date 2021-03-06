INSERT INTO `settings` (`id`, `title`, `key`, `slug`, `image`, `settings_data`, `description`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`, `branch_id`) 
VALUES ('24', 'الملفات المسموح بها فى الرسائل', 'allowed_messages_files', 'allowed_messages_files', NULL, '{"homework_allowed_files":{"value":".pdf,.xlsx","type":"text","extra":"","tool_tip":"extensions only are allowed"}}', 'edit the files extensions allowed in the system', NULL, NULL, NULL, NULL, NULL, NULL, '1', 'settings', '1');


ALTER TABLE `homeworks_student_replay` ADD CONSTRAINT `HW_S_ID` FOREIGN KEY (`homeworks_student_id`) REFERENCES `sasbit_school`.`homeworks_student`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `homeworks_student`  ADD CONSTRAINT `HW_id` FOREIGN KEY (`homework_id`) REFERENCES `home_works` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `messenger_threads` ADD `has_file` BOOLEAN NOT NULL DEFAULT FALSE AFTER `subject`;

ALTER TABLE `messages_files` ADD CONSTRAINT `MSG_id` FOREIGN KEY (`messages_id`) REFERENCES `sasbit_school`.`messenger_messages`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `messenger_messages` ADD CONSTRAINT `R222` FOREIGN KEY (`thread_id`) REFERENCES `sasbit_school`.`messenger_threads`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `messenger_participants` ADD CONSTRAINT `R222` FOREIGN KEY (`thread_id`) REFERENCES `sasbit_school`.`messenger_threads`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;



ALTER TABLE `homeworks_student` ADD INDEX(`homework_id`);

ALTER TABLE `homeworks_student_replay` ADD INDEX(`homeworks_student_id`);