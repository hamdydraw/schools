ALTER TABLE `home_works` ADD `coursesids` VARCHAR(250) NOT NULL AFTER `table_name`;
ALTER TABLE `homeworks_student_replay` ADD `visited` INT NOT NULL DEFAULT '0' AFTER `created_at`;
