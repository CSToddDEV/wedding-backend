CREATE SCHEMA `steps`;

CREATE TABLE `guests` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `guest_type_id` varchar(255),
  `invited_guests` int,
  `email` varchar(255),
  `login_code` varchar(255)
);

CREATE TABLE `guest_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `guest_type` varchar(255)
);

CREATE TABLE `task` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `task_responses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `guest_id` int,
  `task` int,
  `submitted` date,
  `field_one` varchar(255),
  `field_two` varchar(255),
  `field_three` varchar(255),
  `field_four` varchar(255),
  `field_five` varchar(255),
  `field_six` varchar(255),
  `field_seven` varchar(255),
  `field_eight` varchar(255),
  `field_nine` varchar(255),
  `field_ten` varchar(255)
);

CREATE TABLE `activity` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `activity_responses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `guest_id` int,
  `task` int,
  `submitted` date,
  `field_one` varchar(255),
  `field_two` varchar(255),
  `field_three` varchar(255),
  `field_four` varchar(255),
  `field_five` varchar(255),
  `field_six` varchar(255),
  `field_seven` varchar(255),
  `field_eight` varchar(255),
  `field_nine` varchar(255),
  `field_ten` varchar(255)
);

CREATE TABLE `steps` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `parent` varchar(255)
);

CREATE TABLE `steps`.`guest_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `step` int,
  `guest_type` int
);

ALTER TABLE `guests` ADD FOREIGN KEY (`guest_type_id`) REFERENCES `guest_type` (`id`);

ALTER TABLE `task_responses` ADD FOREIGN KEY (`guest_id`) REFERENCES `guests` (`id`);

ALTER TABLE `task_responses` ADD FOREIGN KEY (`task`) REFERENCES `task` (`id`);

ALTER TABLE `activity_responses` ADD FOREIGN KEY (`guest_id`) REFERENCES `guests` (`id`);

ALTER TABLE `activity_responses` ADD FOREIGN KEY (`task`) REFERENCES `activity` (`id`);

ALTER TABLE `steps`.`guest_type` ADD FOREIGN KEY (`step`) REFERENCES `steps` (`id`);

ALTER TABLE `steps`.`guest_type` ADD FOREIGN KEY (`guest_type`) REFERENCES `guest_type` (`id`);
