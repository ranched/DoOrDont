DROP DATABASE IF EXISTS doordontdb;

CREATE DATABASE doordontdb;

USE doordontdb;

-- ALTER DATABASE doordontdb CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER AUTO_INCREMENT,
  `username` VARCHAR(50) UNIQUE NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `salt` VARCHAR(50) NOT NULL DEFAULT "",
  `twitter` VARCHAR(50) DEFAULT NULL,
  `token` VARCHAR(200) DEFAULT NULL,
  `tokenSecret` VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `goals`;
		
CREATE TABLE `goals` (
  `id` INTEGER AUTO_INCREMENT,
  `description` VARCHAR(50) NOT NULL,
  `punishment` VARCHAR(200) NOT NULL,
  `initiate` BOOLEAN NOT NULL,
  `frequency` INT NOT NULL,
  `counter` INT NOT NULL,
  `user_id` INTEGER NOT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `goals` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`) ON DELETE CASCADE;
-- ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- ALTER TABLE users CHANGE password VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;




INSERT INTO users (username, password) VALUES ('Jon', 'password');
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('gym', 'twitter', 1, 5, 0, 1);
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('mall', 'email', 0, 2, 0, 1);
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('food', 'waistline', 0, 3, 0, 1);
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('read', 'brain', 1, 7, 0, 1);
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('bike', 'shape', 1, 5, 0, 1);
INSERT INTO goals (description, punishment, initiate, frequency, counter, user_id) VALUES ('swim', 'bouancy', 1, 6, 0, 1);